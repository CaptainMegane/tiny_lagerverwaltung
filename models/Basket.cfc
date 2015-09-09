/**
 * Customer
 *
 * @author Hugh
 * @date 08.09.15
 **/
component extends="Model" persistent=false {
	function init()
	{
		hasOne(name="customers", modelName="Customer", joinKey="Kundencode", foreignKey="K_Kundencode");
	}

}