<?php
/* Smarty version 3.1.29, created on 2020-11-09 14:32:50
  from "C:\Users\user\UniServerZ\www\mini_shop\templates\side_tools.html" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_5fa9531223cac9_22436858',
  'file_dependency' => 
  array (
    'f6693ac962a87671ebf9cb6cb09614bbf62abd27' => 
    array (
      0 => 'C:\\Users\\user\\UniServerZ\\www\\mini_shop\\templates\\side_tools.html',
      1 => 1604932368,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5fa9531223cac9_22436858 ($_smarty_tpl) {
?>
<div class="alert alert-success">
  <?php echo $_smarty_tpl->tpl_vars['login_user']->value['user_name'];?>
您好！歡迎光臨<?php echo $_smarty_tpl->tpl_vars['shop_name']->value;?>

</div>
<a href="index.php" class="btn btn-primary">回首頁</a>
<a href="user.php?op=user_display&user_sn=<?php echo $_smarty_tpl->tpl_vars['login_user']->value['user_sn'];?>
" class="btn btn-success">我的帳號</a>
<?php if ($_smarty_tpl->tpl_vars['isUser']->value) {?>
    <a href="bill.php" class="btn btn-info">我的訂單</a>
<?php }
if ($_smarty_tpl->tpl_vars['isAdmin']->value) {?>
    <a href="tool.php?op=goods_form" class="btn btn-warning">發布商品</a>
<?php }?>
<a href="user.php?op=user_logout" class="btn btn-danger">登出</a><?php }
}
