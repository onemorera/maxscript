--Create by onemorera
--https://github.com/onemorera/maxscript
--This script unites all break like one command

macroScript Smart_call_break Category:"Smart call"
	


(
	

	
	if subobjectlevel==1 then

		(case classOf($) of
			(
			Editable_Poly: actionMan.executeAction 647394 "EPoly_Break`Editable Polygon Object"
			Editable_Patch: actionMan.executeAction 647394 "EPatch_BreakVertex`Editable Patch Object"
			Editable_Mesh: actionMan.executeAction 647394 "EMesh_VBreak`Editable Mesh Object"
			PolyMeshObject: actionMan.executeAction 647394 "EPoly_Break`Editable Polygon Object"
			line:  actionMan.executeAction 647394 "ESpline_Break`Editable Spline Object"
			SplineShape:  actionMan.executeAction 647394 "ESpline_Break`Editable Spline Object"
			)
		)
	else if subobjectlevel==2 then
		case classOf($) of
			(
			Editable_Poly: actionMan.executeAction 647394 "EPoly_Split`Editable Polygon Object"
			Editable_Patch: ApplyOperation Edit_Patch PatchOps.Break 
			-- Editable_Mesh: --3ds Max have not this option
			PolyMeshObject: $.modifiers[#Edit_Poly].ButtonOp #SplitEdges --actionMan.executeAction 40059 "1250838234" 
			)
)
