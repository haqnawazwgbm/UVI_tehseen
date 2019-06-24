<?php

namespace App\Http\Controllers\Cre;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB,App\User;
class CreController extends Controller
{
  public function __construct(){
      $this->middleware('auth');
  }
  public function index(){
      //$data['total_users'] = User::where('role', 'user')->count();
      $data['total_users']      = DB::table('users')->count();
      $data['total_drivers']    = DB::table('drivers')->count();
      $data['total_companies']  = DB::table('companies')->count();
      return view('cre.dashboard',$data);
  }
  public function dashboard(){
      return view('user.dashboard');
  }
  public function profile(){
    $user = user::find(Auth::user()->id);
    $data['name'] = $user->name;
    $data['firstname'] = $user->firstname;
    $data['lastname'] = $user->lastname;
    $data['email'] = $user->email;

    return view('cre.users.profile',$data);
  }
  public function updateProfile(Request $request)
  {
    $user_id = Auth::user()->id;
    $user = user::find($user_id);
    $user->name = $request->input('name');
    $user->firstname = $request->input('firstname');
    $user->lastname = $request->input('lastname');
    $user->email = $request->input('email');
    if($user->save())
    {
      flash('Profile Updated Successfully')->success();
      return redirect('cremployees/profile');
    }

  }
  public function account(){
    return view('cre.users.account');
  }
  public function updatePassword(Request $request){
  if(Auth::Check()){
    $current_password = Auth::User()->password;
    if($request->input('new_password')==$request->input('confirm_new_password')){
       if(Hash::check($request->input('current_password'), $current_password)){
        $user_id = Auth::user()->id;
        $user = user::find($user_id);
        $user->password = Hash::make($request->input('new_password'));
        if($user->save()){
            flash('Password Updated Successfully')->success();
             return redirect('cremployees/account');
            }
          }
          else{
            flash('Please enter correct current password')->error();
            return redirect('cremployees/account');
          }
      }
      else
      {
        flash('New Password and Confirm New Password Does not match')->error();
        return redirect('cremployees/account');
      }
  }
  }

}
