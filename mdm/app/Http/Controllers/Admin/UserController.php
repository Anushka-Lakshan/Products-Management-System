<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\RedirectResponse;
use Illuminate\View\View;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(): View
    {
        $users = User::orderBy('name')->paginate(15);

        return view('admin.users.index', compact('users'));
    }

    /**
     * Toggle the admin status of the specified user.
     */
    public function toggleAdmin(User $user): RedirectResponse
    {
        if (Auth::id() === $user->id) {
            return redirect()->route('admin.users.index')
                             ->with('error', 'You cannot remove your own admin status.');
        }

        $user->is_admin = !$user->is_admin;
        $user->save();

        $message = $user->is_admin ? "{$user->name} is now an admin." : "{$user->name} is no longer an admin.";

        return redirect()->route('admin.users.index')
                         ->with('success', $message);
    }
}
