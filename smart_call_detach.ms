--Create by onemorera
--https://github.com/onemorera/maxscript
--This script unites all detach like one command

macroScript Smart_call_detach Category:"Smart call"
	


(

	

	(case classOf($) of

		(
		Editable_Poly: actionMan.executeAction 647394 "EPoly_Detach`Editable Polygon Object"
		Editable_Patch: actionMan.executeAction 647394 "EPatch_Detach_Patch`Editable Patch Object"
		Editable_Mesh: actionMan.executeAction 647394 "EMesh_Detach`Editable Mesh Object"
		PolyMeshObject: actionMan.executeAction 647394 "EPoly_Detach`Editable Polygon Object"
		line:  actionMan.executeAction 647394 "ESpline_Detach_Segment`Editable Spline Object"
		SplineShape:  actionMan.executeAction 647394 "ESpline_Detach_Segment`Editable Spline Object"
		
		)
	)
	

)

