<!-- BEGIN: main -->
<div class="row">
  <div class="col-lg-12">
    <h1>{data.page_title}</h1>
    <ol class="breadcrumb">
      <li><a href="{data.link_manage}" {data.class.manage}><i class="fa fa-th-list"></i> {LANG.global.manage}</a></li>
      <li><a href="{data.link_add}" {data.class.add}><i class="fa fa-edit"></i> {LANG.global.add}</a></li>
    </ol>
  </div>
</div>
{data.main} 
<!-- END: main --> 

<!-- BEGIN: edit -->
<form action="{data.link_action}" method="post" enctype="multipart/form-data" name="myForm" id="myForm" role="form">
  <div class="row">
    <div class="col-lg-12">{data.err}</div>
    <div class="col-lg-6">
      <div class="form-group">
        <label>{LANG.global.parent}</label>
        {data.list_group}
      </div>
    </div>
    <div class="col-lg-6">
      <div class="form-group">
        <label>{LANG.admin.username}</label>
        <input name="username" id="username" type="text" size="50" maxlength="150" value="{data.username}" class="form-control">
      </div>
    </div>
    <div class="col-lg-6">
      <div class="form-group">
        <label>{LANG.admin.password}</label>
        <input name="password" id="password" type="password" size="50" maxlength="150" value="" class="form-control">
      </div>
    </div>
    <div class="col-lg-6">
      <div class="form-group">
        <label>{LANG.admin.full_name}</label>
        <input name="full_name" id="full_name" type="text" size="50" maxlength="150" value="{data.full_name}" class="form-control">
      </div>
    </div>
    <div class="col-lg-6">
      <div class="form-group">
        <label>{LANG.global.picture}</label>
        {data.picture}
      </div>
    </div>
    <div class="col-lg-6">
      <div class="form-group">
        <label>{LANG.admin.email}</label>
        <input name="email" id="email" type="text" size="50" maxlength="150" value="{data.email}" class="form-control">
      </div>
    </div>
  </div>
  <div class="row" align="center">
    <input type="hidden" name="do_submit"	 value="1" />
    <button type="submit" class="btn btn-default">{LANG.global.btn_submit}</button>
    <button type="reset" class="btn btn-default">{LANG.global.btn_reset}</button>
  </div>
</form>
<!-- END: edit --> 

<!-- BEGIN: manage --> 
{data.err}
<form action="{data.link_action}" method="post" name="manage" id="manage">
  <div class="row">
    <div class="col-lg-12">
      <div class="table_btn table_btn_top">
        <img class="icon_arrow" src="{DIR_IMAGE}arrow_down.png" />
        <button type="button" class="btn btn-default" onclick="do_submit('do_edit')" value="{LANG.global.btn_update}" name="btnEdit">{LANG.global.btn_update}</button>
        <button type="button" class="btn btn-default" onclick="do_submit_alert('do_del', '{LANG.global.are_you_sure_del}')" value="{LANG.global.btn_del}" name="btnDel">{LANG.global.btn_del}</button>
        <div class="clear"></div>
      </div>
      <div class="table-responsive">
        <table class="table table-bordered table-hover table-striped table_row">
          <thead>
            <tr >
              <th class="header" width="3%"><input id="checkall" class="checkbox" type="checkbox" name="checkall" value="all"/></th>
              <th class="header" width="5%">{data.f_id}</th>
              <th class="header" width="10%">{data.f_picture}</th>
              <th class="header" >{data.f_full_name}</th>
              <th class="header" width="15%">{data.f_username}</th>
              <th class="header" width="25%">{data.f_email}</th>
              <th class="header" width="10%">{LANG.global.action}</th>
            </tr>
          </thead>
          <tbody>
          	<!-- BEGIN: row_item -->
            <tr id="row_{row.id}">
              <td class="cot" align="center"><input class="checkbox" type="checkbox" value="{row.id}" name="selected_id[]"></td>
              <td class="cot" align="center">{row.id}</td>
              <td class="cot" align="center">{row.picture}</td>
              <td class="cot">{row.full_name}</td>
              <td class="cot">{row.username}</td>
              <td class="cot">{row.email}</td>
              <td class="cot" align="center">
                <a href="{row.link_edit}" ><img src="{DIR_IMAGE}icon_edit.png" atl="{LANG.global.edit}" title="{LANG.global.edit}"/></a>
                <a href="javascript:action_item('{row.link_del}','{LANG.global.are_you_sure_del}')" ><img src="{DIR_IMAGE}icon_del.png" atl="{LANG.global.del}" title="{LANG.global.del}"/></a>
              </td>
            </tr>
            <!-- END: row_item --> 
          	<!-- BEGIN: row_item_admin -->
            <tr id="row_{row.id}">
              <td class="cot" align="center">&nbsp;</td>
              <td class="cot" align="center">{row.id}</td>
              <td class="cot" align="center">{row.picture}</td>
              <td class="cot">{row.full_name}</td>
              <td class="cot">{row.username}</td>
              <td class="cot">{row.email}</td>
              <td class="cot" align="center">&nbsp;</td>
            </tr>
            <!-- END: row_item_admin --> 
          	<!-- BEGIN: row_empty -->
            <tr class="warning">
              <td align="center" colspan="7">{row.mess}</td>
            </tr>
            <!-- END: row_empty --> 
          </tbody>
        </table>
      </div>
      <div class="table_btn table_btn_buttom">
        <img class="icon_arrow" src="{DIR_IMAGE}arrow_up.png" />
        <button type="button" class="btn btn-default" onclick="do_submit('do_edit')" value="{LANG.global.btn_update}" name="btnEdit">{LANG.global.btn_update}</button>
        <button type="button" class="btn btn-default" onclick="do_submit_alert('do_del', '{LANG.global.are_you_sure_del}')" value="{LANG.global.btn_del}" name="btnDel">{LANG.global.btn_del}</button>
        <div class="clear"></div>
      </div>
      <div class="table_nav">{data.nav}</div>
      <input id="do_action" type="hidden" value="" name="do_action">
    </div>
  </div>
</form>
<!-- END: manage --> 