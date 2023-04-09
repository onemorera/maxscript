--Create by onemorera
--https://github.com/onemorera/maxscript
--This script unites all attach like one command

macroScript Smart_call_attach Category:"Smart call"
	


(

	
	
	fn ConverToSpline_and_Attach =
	(
		macros.run "Modifier Stack" "Convert_to_Spline";
		actionMan.executeAction 647394 "ESpline_Attach`Editable Spline Object"
	)
	
	fn ConverToPoly_and_Attach =
	(
		macros.run "Modifier Stack" "Convert_to_Poly"
		actionMan.executeAction 647394 "EPoly_Attach`Editable Polygon Object"
	)
	



	
	max modify mode

	(case classOf($) of

		(
		Editable_Poly: actionMan.executeAction 647394 "EPoly_Attach`Editable Polygon Object"
		Editable_Patch: actionMan.executeAction 647394 "EPatch_Attach`Editable Patch Object"
		line: actionMan.executeAction 647394 "ESpline_Attach`Editable Spline Object"
		Arc: ConverToSpline_and_Attach();
		Ellipse: ConverToSpline_and_Attach()
		Text: ConverToSpline_and_Attach()
		Circle: ConverToSpline_and_Attach()
		Ngon: ConverToSpline_and_Attach()
		Rectangle: ConverToSpline_and_Attach()
		FreehandSpline: ConverToSpline_and_Attach()
		Editable_Mesh: actionMan.executeAction 647394 "EMesh_Attach`Editable Mesh Object"
		PolyMeshObject: actionMan.executeAction 647394 "EPoly_Attach`Editable Polygon Object"
		SplineShape:  actionMan.executeAction 647394 "ESpline_Attach`Editable Spline Object"
		Box: ConverToPoly_and_Attach()
		Sphere: ConverToPoly_and_Attach()
		Cylinder: ConverToPoly_and_Attach()
		Cone: ConverToPoly_and_Attach()

		
		)
	)
	

)



