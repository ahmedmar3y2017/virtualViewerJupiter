define(["require"], function(require) {
    var toolbarConfig = function(virtualViewer) {

        /* 
       * There are a few levels of button configuration. First, there are the toolbars themselves. The object "imageToolbarButtons" describes the top toolbar, 
       * and contains functionality like save, rotate, look at information, etc. The object "annotationToolbarButtons" describes the toolbar on the left side
       * of the screen, which holds annotation and watermarks buttons. Any button configuration placed outside of these two objects will be disregarded. The
       * names "imageToolbarButtons" and "annotationToolbarButtons" should NOT be changed. These are baked into how the VirtualViewer functions.
       * 
       * On the next level of granularity, we have the item "toolbarButtonLogicalGroups". Again, do not change the name of this item. Each item in this list
       * represents a group of toolbar buttons. For instance, the zoom group contains all zoom and fit buttons. On the largest size of the viewer, this
       * simply means that whitespace will visually separate this group from other groups. As the viewer shrinks, this group is the dropdown menu that all
       * its buttons will collapse into. These groups will appear onscreen in the order they appear here. 
       * 
       * Each logical group has a key, which will represent it in the DOM. Changing the key will cause unexpected behavior. The object that follows the key
       * contains all the necessary configuration for the group. 
       * 
       * Finally, we have the individual buttons. Similarly to the logical groups, each button has a key, which will serve as its name in the rest of 
       * VirtualViewer's functionality. Each button appears in the order it is listed, within its logical group. If a button does not have a logical group,
       * it will appear at the end of the toolbar.
       * 
       */



        /* DO NOT MODIFY the id field of existing Snowbound toolbar buttons, as this will interfere with normal button functionality and may cause errors.
         * Other aspects of the buttons may be modified.
         */
        var imageToolbarButtons = {
            //This is a sample button to show how to add your own custom buttons. The same format can be added to annotationToolbarButtons to appear in
            //the left toolbar.
            //"myCustomButton": { name: "My Button Tooltip", iconImage: "path/to/icon.png", clickHandler: function () { alert('Hello World'); }, groupId: "vvFileGroup" },
            "vvSaveDocument": { localizeKey: "utilityToolbar.saveDocument.title", clickHandler: virtualViewer.saveDocument, groupId: "vvFileGroup" },
            "vvSaveDocumentAs": { localizeKey: "utilityToolbar.saveDocumentAs.title", clickHandler: virtualViewer.saveDocumentAsDialog, groupId: "vvFileGroup" },
            "vvFileUpload": { localizeKey: "utilityToolbar.uploadDocument.title", clickHandler: virtualViewer.showUploadLocalFileDialog, groupId: "vvFileGroup", addSeparatorAfter: true },
            "vvExportDocument": { localizeKey: "utilityToolbar.exportDocument.title", clickHandler: virtualViewer.exportDocumentDialog, groupId: "vvFileGroup" },
            "vvEmailDocument": { localizeKey: "utilityToolbar.emailDocument.title", clickHandler: virtualViewer.emailDocumentDialog, groupId: "vvFileGroup" },
            "vvPrint": { localizeKey: "utilityToolbar.printDocument.title", clickHandler: virtualViewer.printDocumentDialog, groupId: "vvFileGroup" },
            "vvZoomIn": { localizeKey: "utilityToolbar.zoomIn.title", clickHandler: virtualViewer.zoomIn, groupId: "vvZoomGroup" },
            "vvZoomOut": { localizeKey: "utilityToolbar.zoomOut.title", clickHandler: virtualViewer.zoomOut, groupId: "vvZoomGroup" },
            "vvRubberbandZoom": { localizeKey: "utilityToolbar.rubberbandZoom.title", clickHandler: virtualViewer.zoomRubberband, groupId: "vvZoomGroup" },
            "vvMagnify": { localizeKey: "utilityToolbar.magnifier.title", clickHandler: virtualViewer.toggleMagnifier, groupId: "vvZoomGroup", addSeparatorAfter: true },
            "vvFitWindow": { localizeKey: "utilityToolbar.fitToWindow.title", clickHandler: virtualViewer.fitWindow, groupId: "vvZoomGroup" },
            "vvFitHeight": { localizeKey: "utilityToolbar.fitToHeight.title", clickHandler: virtualViewer.fitHeight, groupId: "vvZoomGroup" },
            "vvFitWidth": { localizeKey: "utilityToolbar.fitToWidth.title", clickHandler: virtualViewer.fitWidth, groupId: "vvZoomGroup" },
            "vvGoToFirstPage": { localizeKey: "utilityToolbar.goToFirstPage.title", clickHandler: virtualViewer.firstPage, groupId: "vvPagesGroup" },
            "vvGoToPreviousPage": { localizeKey: "utilityToolbar.goToPreviousPage.title", clickHandler: virtualViewer.previousPage, groupId: "vvPagesGroup" },

            "vvJumpToPage": { localizeKey: "utilityToolbar.jumpToPage.title", groupId: "vvPagesGroup" },

            "vvGoToNextPage": { localizeKey: "utilityToolbar.goToNextPage.title", clickHandler: virtualViewer.nextPage, groupId: "vvPagesGroup" },
            "vvGoToLastPage": { localizeKey: "utilityToolbar.goToLastPage.title", clickHandler: virtualViewer.lastPage, groupId: "vvPagesGroup" },

            "vvRotatePageRight": { localizeKey: "utilityToolbar.rotateRight.title", clickHandler: virtualViewer.rotateClock, groupId: "vvPageManipGroup" },
            "vvRotatePageLeft": { localizeKey: "utilityToolbar.rotateLeft.title", clickHandler: virtualViewer.rotateCounter, groupId: "vvPageManipGroup" },

            "vvPictureControls": { localizeKey: "utilityToolbar.pictureControls.title", clickHandler: virtualViewer.showPictureControlsDialog, groupId: "vvPageManipGroup", subgroup: 1 },
            "vvCrop": { localizeKey: "utilityToolbar.crop.title", clickHandler: virtualViewer.cropPageButton, groupId: "vvPageManipGroup" },
            "vvImageInfo": { localizeKey: "utilityToolbar.toggleImageInfo.title", clickHandler: virtualViewer.toggleImageInfo, groupId: "vvInfoGroup" },
            "vvAbout": { localizeKey: "utilityToolbar.showAboutDialog.title", clickHandler: virtualViewer.showAboutDialog, groupId: "vvInfoGroup" },
            "vvUserPreferences": { localizeKey: "utilityToolbar.showUserPreferencesDialog.title", clickHandler: virtualViewer.showUserPreferencesDialog, groupId: "vvInfoGroup" }
        };

        var annotationToolbarButtons = {
            "vvAnnStickyNote": { localizeKey: "annToolbar.stickyNote.title", annType: "Sticky Note", groupId: "vvTextAndStamps" },
            "vvAnnText": { localizeKey: "annToolbar.textEdit.title", annType: "Rubber Stamp", groupId: "vvTextAndStamps" },
            "vvAnnImageRubberStamp": { localizeKey: "annToolbar.imageRubberStamp.title", annType: "Bitmap", groupId: "vvTextAndStamps" },
            "vvAnnHighlightRect": { localizeKey: "annToolbar.highlightRectangle.title", annType: "HighlightRectangle", groupId: "vvMarkup" },
            "vvRedactionRect": { localizeKey: "annToolbar.redactionArea.title", annType: "RedactionRect", groupId: "vvMarkup", addSeparatorAfter: true },
            "vvAnnLine": { localizeKey: "annToolbar.line.title", annType: "Line", groupId: "vvMarkup" },
            "vvAnnArrow": { localizeKey: "annToolbar.arrow.title", annType: "Arrow", groupId: "vvMarkup" },
            "vvAnnFreehand": { localizeKey: "annToolbar.freehand.title", annType: "Freehand", groupId: "vvMarkup" },
            "vvAnnFilledRect": { localizeKey: "annToolbar.filledRectangle.title", annType: "FilledRectangle", groupId: "vvShapes" },
            "vvAnnFilledEllipse": { localizeKey: "annToolbar.filledEllipse.title", annType: "FilledEllipse", groupId: "vvShapes" },
            "vvAnnFilledPolygon": { localizeKey: "annToolbar.filledPolygon.title", annType: "FilledPolygon", groupId: "vvShapes", addSeparatorAfter: true },
            "vvAnnRect": { localizeKey: "annToolbar.rectangle.title", annType: "Rectangle", groupId: "vvShapes" },
            "vvAnnEllipse": { localizeKey: "annToolbar.ellipse.title", annType: "Ellipse", groupId: "vvShapes" },
            "vvAnnPolygon": { localizeKey: "annToolbar.polygon.title", annType: "Polygon", groupId: "vvShapes" },
            "vvWatermarks": { localizeKey: "annToolbar.createWatermark.title", clickHandler: virtualViewer.showWatermarksManager, groupId: "" },
            "vvLayerManager": { localizeKey: "annToolbar.layerManager.title", clickHandler: virtualViewer.toggleLayerManager, groupId: "" }
        };

        var toolbarButtonLogicalGroups = {
            "vvFileGroup": { groupTitle: "File", localizeKey: "utilityToolbar.fileGroup", iconImage: "" },
            "vvZoomGroup": { groupTitle: "Zoom", localizeKey: "utilityToolbar.zoomGroup" },
            "vvPagesGroup": { groupTitle: "Pages", localizeKey: "utilityToolbar.pagesGroup" },
            "vvPageManipGroup": { groupTitle: "Page Manipulation", localizeKey: "utilityToolbar.pageManipulationGroup" },
            "vvInfoGroup": { groupTitle: "Info and Settings", localizeKey: "utilityToolbar.infoGroup" },
            "vvTextAndStamps": { groupTitle: "Text and Stamps", localizeKey: "annToolbar.textAndStampsGroup", annotationToolbar: true },
            "vvMarkup": { groupTitle: "Markup", localizeKey: "annToolbar.markupGroup", annotationToolbar: true },
            "vvShapes": { groupTitle: "Shapes", localizeKey: "annToolbar.shapesGroup", annotationToolbar: true }
        };

        return {
            imageToolbarButtons: imageToolbarButtons,
            annotationToolbarButtons: annotationToolbarButtons,
            toolbarButtonLogicalGroups: toolbarButtonLogicalGroups
        };
    };
    return toolbarConfig;
});
