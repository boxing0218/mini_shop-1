<?php
/* Smarty version 3.1.29, created on 2020-11-09 14:21:14
  from "C:\Users\user\UniServerZ\www\mini_shop\templates\side_login.html" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_5fa9505aeb41a9_24023253',
  'file_dependency' => 
  array (
    '04c4f082ffd5ebafd3ecb4cd2505ecd93ffa8db3' => 
    array (
      0 => 'C:\\Users\\user\\UniServerZ\\www\\mini_shop\\templates\\side_login.html',
      1 => 1604931672,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5fa9505aeb41a9_24023253 ($_smarty_tpl) {
?>
<form action="user.php" method="post" role="form" class="form-horizontal">
  <div class="form-group">
    <label class="col-md-4 control-label">帳號：</label>
    <div class="col-md-4">
      <input type="text" name="user_id" id="user_id" class="form-control" placeholder="請輸入帳號">
    </div>
  </div>

  <div class="form-group">
    <label class="col-md-4 control-label">密碼：</label>
    <div class="col-md-4">
      <input type="password" name="user_passwd" id="user_passwd" class="form-control" placeholder="請輸入密碼">
    </div>
  </div>

  <div class="form-group">
    <div class="col-md-5"></div>
    <div class="col-md-2">
      <input type="hidden" name="op" value="user_login">
      <button type="submit" name="button" class="btn btn-primary btn-block">登入</button>
    </div>
    <label class=" col-md-1 control-label">
      <a href="user.php?op=user_form" class="btn btn-link">註冊</a>
    </label>
  </div>
</form><?php }
}
