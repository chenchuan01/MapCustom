<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<script type="text/javascript">
$(function(){page(1);});
</script>
<div class="span12">
	<div class="span12 pull-right">
		<form id="search" class="form-inline pull-right" action="sys/userPage.do">
		<input type="text" class="input-middle" name="empno" placeholder="工号">
		<input type="text" class="input-middle" name="name" placeholder="姓名">
		<input type="text" class="input-middle" name="tel" placeholder="电话">
		<select name="dep"  placeholder="员工部门">
			<option value="">员工部门</option>
			<option value="xs">销售部</option>
			<option value="rs">人事部</option>
			<option value="js">技术部</option>
		</select>
		  <button type="button" class="btn btn-info search" onclick="page(1)" 
		  	data-toggle="tooltip" data-placement="top" title="查询">
		  <i class="icon icon-search"></i>
		  </button>
		  <button type="button" class="btn btn-success" onclick="refresh()"
		  data-toggle="tooltip" data-placement="top" title="刷新">
		  <i class="icon icon-refresh"></i>
		  </button>
		   <button type="button" class="btn btn-danger" onclick="delBatch('sys/delBatchUser.do')"
		  data-toggle="tooltip" data-placement="top" title="批量删除">
		  批量删除
		  </button>
		</form>
	</div>
	<table class="table table-bordered" style="text-align: center; background: #fff;">
		<tr id="template" style="display: none;">
			<td item="checkBox" itemFiled="id">
				<input type="checkbox" title="选择"  class="choose" value="#itemId"/>
			</td>
			<td item="index"></td>
			<td item="empno"></td>
			<td item="name"></td>
			<td item="tel"></td>
			<td item="dep"></td>
			<td item="oprea" itemFiled="id">
				<a href="javascript:;" title="修改信息" onclick="autoWin('员工信息修改','sys/userForm.do?id=')" class="btn btn-warning btn-sm"><i class="icon icon-edit"></i></a>
				<a href="javascript:;" title="删除信息" onclick="deleteItem('sys/userDelete.do?id=')" class="btn btn-danger btn-sm"><i class="icon icon-trash"></i></a>
			</td>
		</tr>
		<thead>
			<tr>
				<th></th><th>#</th><th>工号</th><th>姓名</th><th>电话</th><th>部门</th><th>操作</th>
			</tr>
		</thead>
		<tbody id="tableData"></tbody>
		<thead>
			<tr>
				<th colspan="7"><%@include file="../common/page.jspf" %></th>
			</tr>
		</thead>
		
	</table>
</div>
    