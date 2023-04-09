--Create by onemorera
--https://github.com/onemorera/maxscript
--This script unites all weld like one command

macroScript Smart_call_weld Category:"Smart call"
	


(
	

	
	if subobjectlevel==1 then

		(case classOf($) of
			(
			Editable_Poly: $.EditablePoly.weldFlaggedVertices()
			Editable_Patch: ApplyOperation Edit_Patch PatchOps.Weld
			Editable_Mesh: actionMan.executeAction 647394 "EMesh_Weld`Editable Mesh Object"
			PolyMeshObject: $.modifiers[#Edit_Poly].ButtonOp #WeldVertex
			line:  actionMan.executeAction 647394 "ESpline_Weld`Editable Spline Object"
			SplineShape:  actionMan.executeAction 647394 "ESpline_Weld`Editable Spline Object"
			)
		)
	else if subobjectlevel==2 then
		case classOf($) of
			(
			Editable_Poly: actionMan.executeAction 647394 "EPoly_EWeld`Editable Polygon Object"
			--Editable_Patch: --3ds Max have not this option
			--Editable_Mesh: --3ds Max have not this option
			PolyMeshObject: $.modifiers[#Edit_Poly].ButtonOp #WeldEdge
			)
)
