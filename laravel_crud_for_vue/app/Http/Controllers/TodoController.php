<?php

namespace App\Http\Controllers;

use App\Models\Todo;
use Illuminate\Http\Request;

class TodoController extends Controller
{
    public $PendingTasks;
    public $CompletedTasks;
    public function __construct()
    {
        $this->PendingTasks = Todo::where('done', false)->orderBy('created_at', 'DESC')->get();
        $this->CompletedTasks = Todo::where('done', true)->latest()->get();
    }

    public function index()
    {
        $PendingTasks= $this->PendingTasks;
        $CompletedTasks= $this->CompletedTasks;
        return view('todo.index',compact('PendingTasks', 'CompletedTasks'));
    }

    public function store(Request $request)
    {
        $tasks = new Todo();
        $tasks->task = $request->task;
        $tasks->save();
        return redirect()->back();
    }

    public function edit(string $id)
    {
        $Item = Todo::find($id);
        $PendingTasks= $this->PendingTasks;
        $CompletedTasks= $this->CompletedTasks;
        return view('todo.index',compact('Item','PendingTasks', 'CompletedTasks'));
    }

    public function update(Request $request)
    {
        $tasks = Todo::findOrFail($request->id);
        $tasks->task = $request->task;
        $tasks->save();
        return redirect('/task');
    }
    public function destroy(string $id)
    {
        Todo::find($id)->delete();
        return redirect('/task');
    }

    public function done(string $id)
    {
        $tasks = Todo::find($id);
        $tasks->done = 1;
        $tasks->save();
        return redirect('/task');
    }

    public function undone(string $id)
    {
        $tasks = Todo::find($id);
        $tasks->done = 0;
        $tasks->save();
        return redirect('/task');
    }
}
