<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ taglib uri="darewayBS.tld" prefix="dw"%>
<%@ taglib uri="newform.tld" prefix="nf"%>
<%@ taglib uri="segment.tld" prefix="seg"%>
<%@ taglib uri="newgrid.tld" prefix="ng"%>
<%@ page import="com.dareway.framework.util.*"%>
<dw:body>
	<dw:tab name="pydetails">
		<dw:tabPage name="pyxx" labelValue="派员信息">
			<nf:form name="pyxxForm" dataSource="pyds" colCount="7">
				<nf:textInput dataType="string" name="pydh" labelValue="派单编号" colspan="2" readonly="true"></nf:textInput>
				<nf:textInput dataType="date" name="pyrq" labelValue="派员日期" colspan="2" readonly="true"></nf:textInput>
				<nf:textInput dataType="string" name="dhdh" labelValue="调货单号" colspan="2" readonly="true"></nf:textInput>
				<nf:textInput dataType="string" name="rwlx" labelValue="任务类型" colspan="2" readonly="true"></nf:textInput>
				<nf:textInput dataType="string" name="htmc" labelValue="合同名称" colspan="4" readonly="true"></nf:textInput>
				<nf:multiLineText name="gznr" labelValue="工作内容" rowspan="3" readonly="true"></nf:multiLineText>
				<nf:multiLineText name="gzyq" labelValue="工作要求" rowspan="3" readonly="true"></nf:multiLineText>
				<nf:multiLineText name="bz" labelValue="备注" rowspan="3" readonly="true"></nf:multiLineText>
				<nf:multiLineText name="rwsm" labelValue="完成情况说明" rowspan="3" readonly="true"></nf:multiLineText>
				<nf:textInput dataType="string" name="xsry" labelValue="销售负责人姓名" colspan="2" readonly="true"></nf:textInput>
				<nf:textInput dataType="string" name="gzfzr" labelValue="工作负责人" colspan="2" readonly="true"></nf:textInput>
				<nf:textInput dataType="string" name="gzzfzr" labelValue="派员人" colspan="2" readonly="true"></nf:textInput>
				<nf:textInput dataType="string" name="wcbgbh" labelValue="完成报告编号" colspan="2" readonly="true"></nf:textInput>
				<nf:textInput dataType="date" name="pywcrq" labelValue="派员完成日期" readonly="true"></nf:textInput>
				<nf:textInput dataType="number" name="gzl" labelValue="工作量(天)" mask="#####.##" readonly="true"></nf:textInput>
				<nf:textInput dataType="string" name="emid" hidden="true"></nf:textInput>
			</nf:form>
		</dw:tabPage>
		<dw:tabPage name="scwd" labelValue="完成报告">
			<dw:panel name="zbwj"></dw:panel>
		</dw:tabPage>
	</dw:tab>
</dw:body>
<script type="text/javascript" defer="defer">
	loadData();
</script>
<script type="text/javascript">
	function loadData() {
		var emid = getObject("emid").getValue();
		if(emid == "" || emid == null){
			return false;
		}
		var zbwj = getObject("zbwj");
		viewEMByEmid(emid, zbwj); //框架提供的js方法。可以将该页面嵌入到其他panel中
	}
</script>
