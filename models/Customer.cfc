/**
 * Customer
 *
 * @author Hugh
 * @date 08.09.15
 **/
component extends="Model" persistent=false {
	function init()
	{
		hasOne(name="Branches", modelName="Branche", joinKey="Branche", foreignKey="BrancheID");
	}

}