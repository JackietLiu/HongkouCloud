<?xml version="1.0" encoding="UTF-8"?>
<model xmlns="http://www.justep.com/model">
	<action xmlns="http://www.w3.org/1999/xhtml" name="querySa_oporg"
		impl="action:common/CRUD/query">
		<private name="condition" type="String"></private>
		<private name="db" type="String">system</private>
		<private name="tableName" type="String">sa_oporg</private>
		<public name="columns" type="Object"></public>
		<public name="filter" type="String"></public>
		<public name="limit" type="Integer"></public>
		<public name="offset" type="Integer"></public>
		<public name="orderBy" type="String"></public>
		<public name="variables" type="Object"></public>
	</action>
	<action xmlns="http://www.w3.org/1999/xhtml" name="saveSa_oporg"
		impl="action:common/CRUD/save">
		<private name="db" type="String">system</private>
		<private name="permissions" type="Object"><![CDATA[{"sa_oporg":""}]]></private>
		<public name="tables" type="List"></public>
	</action>
	<action xmlns="http://www.w3.org/1999/xhtml" name="querySa_opperson"
		impl="action:common/CRUD/query">
		<private name="condition" type="String"></private>
		<private name="db" type="String">system</private>
		<private name="tableName" type="String">sa_opperson</private>
		<public name="columns" type="Object"></public>
		<public name="filter" type="String"></public>
		<public name="limit" type="Integer"></public>
		<public name="offset" type="Integer"></public>
		<public name="orderBy" type="String"></public>
		<public name="variables" type="Object"></public>
	</action>
	<action xmlns="http://www.w3.org/1999/xhtml" name="saveSa_opperson"
		impl="action:common/CRUD/save">
		<private name="db" type="String">system</private>
		<private name="permissions" type="Object"><![CDATA[{"sa_opperson":""}]]></private>
		<public name="tables" type="List"></public>
	</action>
	<action xmlns="http://www.w3.org/1999/xhtml" name="deleteOrg"
		impl="Org.deleteOrg"></action>
	<action xmlns="http://www.w3.org/1999/xhtml" name="updateSa_Oporg"
		impl="Org.updateSa_Oporg"></action>
	<action xmlns="http://www.w3.org/1999/xhtml" name="queryPerson"
		impl="Org.queryPerson"></action>
	<action xmlns="http://www.w3.org/1999/xhtml" name="movePerson"
		impl="Org.movePerson"></action>
	<action xmlns="http://www.w3.org/1999/xhtml" name="updataMainOrg"
		impl="Org.updataMainOrg"></action>
	<action xmlns="http://www.w3.org/1999/xhtml" name="queryIsActivation"
		impl="Org.queryIsActivation"></action>
	<action xmlns="http://www.w3.org/1999/xhtml" name="getsSequence"
		impl="Org.getsSequence"></action>
	<action xmlns="http://www.w3.org/1999/xhtml" name="querySFunRole"
		impl="action:common/CRUD/sqlQuery">
		<private name="countSql" type="String">select count(*) from sa_oporg
			left join sa_opperson on sa_oporg.sPersonID=sa_opperson.sID
		</private>
		<private name="db" type="String">system</private>
		<private name="sql" type="String">select
			sa_oporg.*,sa_opperson.sFunRole from sa_oporg left join sa_opperson
			on sa_oporg.sPersonID=sa_opperson.sID
		</private>
		<private name="tableName" type="String">sa_oporg</private>
		<public name="columns" type="Object"></public>
		<public name="filter" type="String"></public>
		<public name="limit" type="Integer"></public>
		<public name="offset" type="Integer"></public>
		<public name="orderBy" type="String"></public>
		<public name="variables" type="Object"></public>
	</action>
	<action xmlns="http://www.w3.org/1999/xhtml" name="queryHasOrg"
		impl="Org.queryHasOrg"></action>
</model>