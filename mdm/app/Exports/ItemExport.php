<?php

namespace App\Exports;

use App\Models\Item;
use Illuminate\Support\Facades\Auth;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize; // Import ShouldAutoSize

class ItemExport implements FromQuery, WithMapping, WithHeadings, ShouldAutoSize
{
    protected $search;
    protected $status;
    protected $isAdmin;

    public function __construct($search = null, $status = null)
    {
        $this->search = $search;
        $this->status = $status;
        $this->isAdmin = Auth::user()->is_admin; // Check admin status once
    }

    /**
    * @return \Illuminate\Database\Eloquent\Builder
    */
    public function query()
    {
        $query = Item::query()->with(['user', 'brand', 'category']); // Eager load relationships

        // Apply user scope
        if (!$this->isAdmin) {
            $query->where('user_id', Auth::id());
        }

        // Apply search filter
        if ($this->search) {
            $searchTerm = $this->search;
            $query->where(function ($q) use ($searchTerm) {
                $q->where('code', 'like', "%{$searchTerm}%")
                  ->orWhere('name', 'like', "%{$searchTerm}%");
            });
        }

        // Apply status filter
        if ($this->status && in_array($this->status, ['active', 'inactive'])) {
            $query->where('status', $this->status);
        }

        return $query->latest(); // Order by latest
    }

    /**
    * @param Item $item
    * @return array
    */
    public function map($item): array
    {
        $data = [
            $item->code,
            $item->name,
            $item->brand->name ?? 'N/A',
            $item->category->name ?? 'N/A',
            ucfirst($item->status),
            $item->created_at->format('Y-m-d H:i:s'), // Consistent date format
        ];

        if ($this->isAdmin) {
            $data[] = $item->user->name ?? 'N/A'; // Add owner only if admin
        }

        return $data;
    }

    /**
    * @return array
    */
    public function headings(): array
    {
        $headers = [
            'Code',
            'Name',
            'Brand',
            'Category',
            'Status',
            'Created At',
        ];

        if ($this->isAdmin) {
            $headers[] = 'Owner'; // Add owner header only if admin
        }

        return $headers;
    }
}
