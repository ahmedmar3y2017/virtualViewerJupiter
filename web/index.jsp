<%--
  Created by IntelliJ IDEA.
  User: ahmed.marey
  Date: 10/1/2019
  Time: 1:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<!-- VirtualViewer HTML5 Version 5.0.0.280 -->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/>

    <meta name="apple-mobile-web-app-capable" content="yes" />
    <link rel="apple-touch-icon" href="resources/apple-touch-icon-precomposed-green.png" />

    <title data-localize="windowTitle">VirtualViewer HTML5</title>

    <link rel="shortcut icon" href="resources/VirtualViewer.ico" />

    <link type="text/css" href="css/3rdparty/snowbound/bootstrap.css" rel="stylesheet" />
    <link type="text/css" href="css/customBootstrap.css" rel="stylesheet" />

    <!-- <link type="text/css" href="css/jquery.tooltip.css" rel="stylesheet" /> -->
    <link rel="stylesheet" type="text/css" href="css/icons.css" />
    <link rel="stylesheet" type="text/css" href="css/dialog.css" />
    <link rel="stylesheet" type="text/css" href="css/webviewer.css" />
    <link rel="stylesheet" type="text/css" href="css/toolbar.css" />
    <link rel="stylesheet" type="text/css" href="css/sortable.css" />
    <link rel="stylesheet" type="text/css" href="css/3rdparty/snowbound/bootstrap-slider.min.css" />
    <link rel="stylesheet" type="text/css" href="css/3rdparty/jquery.highlight-within-textarea.css" />

    <!-- XXX: BE SURE TO UPDATE resources/print.html WHEN UPGRADING JQUERY -->
    <script type="text/javascript" src="js/3rdparty/jquery-3.4.1.min.js"></script>
    <!-- XXX: BE SURE TO UPDATE resources/print.html WHEN UPGRADING JQUERY -->

    <script type="text/javascript" src="js/3rdparty/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/3rdparty/bootstrap-slider.min.js"></script>
    <script type="text/javascript" src="js/3rdparty/jquery.contextmenu.r2.min.js"></script>
    <script type="text/javascript" src="js/3rdparty/jquery.hotkeys.min.js"></script>
    <script type="text/javascript" src="js/3rdparty/jquery.localize.min.js"></script>
    <script type="text/javascript" src="js/3rdparty/hammer.min.js"></script>
    <script type="text/javascript" src="js/3rdparty/jquery-sortable-min.js"></script>
    <script type="text/javascript" src="js/3rdparty/split.min.js"></script>
    <script type="text/javascript" src="js/3rdparty/jsrender.min.js"></script>
    <script type="text/javascript" src="js/3rdparty/jquery.highlight-within-textarea.min.js"></script>
    <script type="text/javascript" src="js/3rdparty/bootstrap-add-clear.min.js"></script>

    <script type="text/javascript" src="js/3rdparty/json2.min.js"></script>

    <script type="text/javascript" src="js/3rdparty/browserdetect.min.js"></script>

    <script type="text/javascript" src="js/3rdparty/modernizr-custom.min.js"></script>

    <script type="text/javascript" src="js/3rdparty/URI.js"></script>

    <script type="text/javascript" src="js/3rdparty/console-shim.min.js"></script>

    <script type="text/javascript" src="js/3rdparty/localforage.min.js"></script>
    <script type="text/javascript" src="js/3rdparty/moment.min.js"></script>

    <script type="text/javascript" src="js/3rdparty/lie.polyfill.min.js"></script>


    <script type="text/javascript" src="js/print.js"></script>
    <script type="text/javascript">
        if (typeof beforeVirtualViewerInit === 'undefined') {
            beforeVirtualViewerInit = function() {
                // Return true to allow virtualViewer initialization to continue
                // and call virtualViewer.initViaURL, return false to stop initialization.

                // To open VirtualViewer with specified documents, set the config.js parameter,
                // and modify the following snippet of code:

                // var mySpecifiedDocuments = ["BankStatement.pdf", "help.doc"];
                // virtualViewer.initSpecifiedDocuments(mySpecifiedDocuments);
                // return false;

                return true;
            };
        }

        // This function will be called once initialization of virtualViewer has been finished.
        // It must be called manually if you have performed custom initialization API calls in
        // beforeVirtualViewerInit and returned false.
        if (typeof afterVirtualViewerInit === 'undefined') {
            afterVirtualViewerInit = function() { };
        }
    </script>

    <!--script data-main="js/virtualviewer-main" src="js/require.js"></script-->
    <script data-main="js/virtualviewer-built" src="js/require.js"></script>

</head>

<body>
<div id="virtualViewerMain">
    <div role="navigation" id="vvToolbar" class="nonselectable navbar navbar-default">

        <div class="container-fluid">
            <div class="navbar-header">
                <button id="vvToolbarHamburger" type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#vvToolbarItems" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <!-- Create the hamburger button with these bootstrap icon bars -->
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div id="vvThumbToggleButton"
                     class="icon toolbar-icon"
                     data-localize="utilityToolbar.toggleThumbnailPanel"
                     data-title="Toggle Thumbnails"
                     data-toggle="tooltip"
                     data-placement="bottom"
                     title="Toggle Thumbnails">
                </div>
            </div>
            <div class="collapse navbar-collapse" id="vvToolbarItems">
                <ul id="vvMidSizeToolbarItems" class="nav navbar-nav hidden-lg hidden-xs"></ul>
                <ul id="vvUncategorizedToolbarItems" class="nav navbar-nav"></ul>
                <ul id="vvAnnToolbarHamburgerItems" class="nav navbar-nav hidden-sm hidden-md hidden-lg"></ul>
            </div>
        </div>
    </div>


    <div role="navigation" id="vvAnnToolbar" class="nonselectable navbar navbar-default hidden-xs">
        <div class="container-fluid">

            <div class="collapse navbar-collapse" id="vvAnnToolbarItems">
                <ul id="vvMidSizeAnnToolbarItems" class="nav navbar-nav hidden-lg hidden-xs hidden-print"></ul>
                <ul id="vvUncategorizedAnnToolbarItems" class="nav navbar-nav"></ul>
            </div>
        </div>
        <div id="vvSnowboundLogo" class="icon" data-toggle="tooltip" data-placement="right" title="VirtualViewer® HTML5 by Snowbound">
            <!--These inner path spans allow the multicolor font glyph to function -->
            <!-- Don't pretty-print this, it's allergic to line breaks -->
            <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span>
        </div>
    </div>

    <div id="vvImageAndThumbs">
        <div id="vvImagePanel" class="nonselectable noThumbs">
            <ul id="vvImageTabs" class="nav nav-tabs nonselectable">
                <!-- The tabs will go here -->
                <li id="collapseTab" data-toggle="tooltip" data-placement="left" title="More Documents">
                    <button id="collapseTabButton" class="icon btn btn-default dropdown-toggle" data-toggle="dropdown"></button>
                    <ul class="dropdown-menu dropdown-menu-right" id="collapsed"></ul>
                </li>
            </ul>
            <div id="vvSplitPaneDiv">
                <div id="vvOuterDiv" class="vvOuter">
                    <div id="vvDummyScroller" class="vvScroller">
                    </div>
                    <div id="vvInnerDiv" class="vvInner">
                        <canvas id="vvImageCanvas" class="vvCanvas"></canvas>
                        <canvas id="vvMagnifierCanvas" class="vvMagnifier"></canvas>
                    </div>
                </div>
            </div>
        </div>

        <div id="vvThumbs" class="container">
            <ul id="vvThumbsTabs" style="visibility: hidden" class="nav nav-tabs">
                <!-- visibility set above to avoid FOUC -->
                <li id="vvPageThumbsTab" class="thumbTabs nav active vvAllowedTab" >
                    <a href="#vvPageThumbs" data-toggle="tab">
                        <span data-localize="thumbnails.pageTab" data-toggle="tooltip" data-placement="bottom" data-container="body" class="vvPagesTabIcon tab-icon icon"></span>
                    </a>
                </li>
                <li id="vvDocThumbsTab" class="thumbTabs nav active vvAllowedTab" >
                    <a href="#vvDocThumbs" data-toggle="tab">
                        <span data-localize="thumbnails.documentTab" data-toggle="tooltip" data-placement="bottom" data-container="body" class="vvDocumentsTabIcon tab-icon icon"></span>
                    </a>
                </li>
                <li id="vvDocCompareTab" class="thumbTabs nav active" >
                    <a href="#vvDocCompare" data-toggle="tab">
                        <span data-localize="thumbnails.docCompareTab" data-toggle="tooltip" data-placement="bottom" data-container="body" class="vvDocCompareIcon tab-icon icon"></span>
                    </a>
                </li>
                <li id="vvSearchTab" class="thumbTabs nav active vvAllowedTab" >
                    <a href="#vvSearch" data-toggle="tab">
                        <span data-localize="thumbnails.searchTab" data-toggle="tooltip" data-placement="bottom" data-container="body" class="vvSearchTabIcon tab-icon icon"></span>
                    </a>
                </li>
                <li id="vvNotesTab" class="thumbTabs nav vvAllowedTab" >
                    <a href="#vvDocumentNotes" data-toggle="tab">
                        <span id="vvNotesTabSpan" data-localize="thumbnails.notesTab" data-toggle="tooltip" data-placement="bottom" data-container="body" class="vvNotesTabIcon tab-icon icon"></span>
                    </a>
                </li>
                <li id="vvBookmarksTab" class="thumbTabs nav vvAllowedTab" >
                    <a href="#vvBookmarks" data-toggle="tab">
                        <span data-localize="thumbnails.bookmarksTab" data-toggle="tooltip" data-placement="bottom" data-container="body" class="vvBookmarksTabIcon tab-icon icon"></span>
                    </a>
                </li>
                <li id="vvAnnotationsListTab" class="thumbTabs nav vvAllowedTab" >
                    <a href="#vvAnnotationsList" data-toggle="tab">
                        <span data-localize="thumbnails.annInfoTab" data-toggle="tooltip" data-placement="bottom" data-container="body" class="vvAnnotationsListTabIcon tab-icon icon"></span>
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <!-- Page Thumbs -->
                <div id="vvPageThumbs" class="tab-pane thumbPanel active nonselectable" ondragover="event.preventDefault()">

                    <div id="vvAnnotationIndicatorToggle"
                         onclick="javascript:myFlexSnap.showAnnotationNaviPanel()"
                         data-localize="annotationNavigation.showAnnotationNaviPanel"
                         type="button"
                         data-toggle="tooltip"
                         data-placement="left"
                         class="icon"
                         title="Toggle Annotation Navigation">
                    </div>
                    <div id="vvAnnButtonContainer" class="input-group">
                        <button id="vvPrevAnnotationButton"
                                data-localize="annotationNavigation.goToPrev"
                                class="vvLittlePreviousArrow icon indicator-icon btn btn-default"
                                data-toggle="tooltip"
                                title="Previous">
                        </button>
                        <button id="vvNextAnnotationButton"
                                data-localize="annotationNavigation.goToNext"
                                class="vvLittleNextArrow icon indicator-icon btn btn-default"
                                data-toggle="tooltip"
                                title="Next">
                        </button>
                        <button id="vvAnnotationThumbsButton"
                                onclick="javascript:myFlexSnap.showThumbsWithAnnotations()"
                                data-localize="annotationNavigation.showThumbsWithAnnotations"
                                class="icon indicator-icon btn btn-default"
                                data-toggle="tooltip"
                                title="Turn Filter On">
                        </button>
                        <div id ="vvNavOptions">
                            <input type="radio" value="annotation" name="radio" id="vvAnnotationNavigationOption" checked="checked"/><label for="vvAnnotationNavigationOption" id="vvAnnotationNavigationOptionLabel"></label>
                            <input type="radio" value="redaction" name="radio" id="vvRedactionNavigationOption"/><label for="vvRedactionNavigationOption" id="vvRedactionNavigationOptionLabel"></label>
                        </div>
                    </div>
                </div>
                <!-- Doc Thumbs -->
                <div id="vvDocThumbs" class="tab-pane thumbPanel nonselectable">
                    <div id="vvDocThumbsSearch" class="vvRightPaneControlPanel form-group form-group-sm">
                        <input type="text" class="displayNameSearch form-control" placeholder="Filter" />
                    </div>
                </div>
                <!-- Document compare (hidden) -->
                <div id="vvDocCompare" class="tab-pane">
                    <div class="vvDiffButtonGroup btn-toolbar" role="toolbar">
                        <div class="btn-group" role="group">
                            <button id="vvToggleDiffHighlightingBtn" class="vvDiffButton vvDiffHighlightVisible icon btn btn-default" type="button" data-localize="documentCompare.toggleDiffButton">
                            </button>
                            <button id="vvLockScrollingBtn" class="vvDiffButton vvDiffScrollingUnlocked icon btn btn-default" type="button" data-localize="documentCompare.lockScrolling">
                            </button>
                            <button id="vvRefreshDiffBtn" class="vvDiffButton icon btn btn-default" type="button" data-localize="documentCompare.refreshDiff">
                            </button>
                        </div>
                    </div>
                    <div id="fixedPageLabel" class="nonselectable"></div>
                    <div id="vvDocCompareInternal" class="nonselectable">

                    </div>
                </div>
                <!-- Search -->
                <div id="vvSearch" class="tab-pane thumbPanel" style="visibility: hidden">
                    <!-- visibility set above to avoid FOUC -->
                    <form id="vvSearchControls">
                        <div class="row" id="vvSearchTerm">
                            <div class="col-xs-12">
                                <div class="input-group input-group-sm">
                                    <input type="text" id="vvSearchTermField" class="form-control" />
                                    <div class="input-group-btn">
                                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
                                        <button data-localize="search.docSearch"
                                                id="vvDocSearchStart"
                                                class="vvSearchButton vvDocSearchStart icon btn btn-default"
                                                type="button"
                                                title="Search Document"
                                                data-toggle="tooltip"></button>
                                        <button data-localize="search.annSearch"
                                                id="vvAnnSearchStart"
                                                class="vvSearchButton vvAnnSearchStart icon btn btn-default"
                                                type="button"
                                                title="Search Annotations"
                                                data-toggle="tooltip"></button>
                                        <ul id="vvSearchPatternSelect" class="dropdown-menu pull-right">
                                            <li><a id="vvSearchPatternOptionNone"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="vvSearchTermProgress">
                            <div id="vvSearchProgressContainer" class="progress">
                                <span id="vvSearchProgressCancel" class="icon"></span>
                                <div id="vvSearchProgress" class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
                                    <span class="sr-only"></span>
                                    <span id="vvSearchProgressText"></span>
                                    <!-- visibility set above to avoid FOUC -->
                                </div>
                            </div>
                        </div>
                        <div class="row" id="vvMainSearchButtons">
                            <div class="col-xs-12">
                                <div class="btn-toolbar" role="toolbar">
                                    <div class="btn-group" role="group">
                                        <button data-localize="search.previousMatch"
                                                id="vvSearchPrevious"
                                                class="vvSearchButton vvLittlePreviousArrow icon btn btn-default"
                                                type="button"
                                                title="Previous Match"
                                                data-toggle="tooltip"></button>

                                    </div>
                                    <div id="vvSearchRedactButtons" class="btn-group">
                                        <button data-localize="search.redactAllMatches"
                                                id="vvSearchRedactAllMatches"
                                                class="vvSearchButton vvSearchRedactButton vvSearchRedactAll icon btn btn-default"
                                                type="button"
                                                title="Redact All Matches"
                                                data-toggle="tooltip"></button>

                                        <button data-localize="search.redactCurrentMatch"
                                                id="vvSearchRedactCurrentMatch"
                                                class="vvSearchButton vvSearchRedactButton vvSearchRedactCurrent icon btn btn-default"
                                                type="button"
                                                title="Redact Current Match"
                                                data-toggle="tooltip"></button>

                                        <button id="vvTagAllRedactions"
                                                data-localize="search.tagAllRedactions"
                                                data-toggle="tooltip"
                                                class="vvSearchButton vvTagAllRedactions icon btn btn-default"
                                                type="button"
                                                title="Tag All Redactions"></button>
                                    </div>
                                    <div class="btn-group">
                                        <button data-localize="search.nextMatch"
                                                id="vvSearchNext"
                                                class="vvSearchButton vvLittleNextArrow icon btn btn-default"
                                                type="button"
                                                title="Next Match"
                                                data-toggle="tooltip"></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>

                    <div id="vvSearchResults">
                    </div>
                </div>
                <!-- Document Notes -->
                <div id="vvDocumentNotes" class="tab-pane">
                    <div id="vvDocumentNotesAdder" class="form-group-sm">
                        <div id="vvDocumentNoteAdderAuthor"> </div>
                        <input id="vvDocumentNoteContentInput" type="text" class="form-control" name="vvDocumentNoteContentInputName">
                        <button id="vvDocumentNoteAddButton" type="button" class="btn btn-secondary btn-block" data-localize="notes.addNote">Add Note</button>
                        <button id="vvDocumentNoteTemplateButton" type="button" class="btn btn-secondary btn-block" data-localize="notes.selectTemplate">Select Template</button>
                    </div>
                    <div id="vvDocumentNotesInternal" class="vvNotesInternal">

                    </div>
                </div>
                <!-- Bookmarks -->
                <div id="vvBookmarks" class="tab-pane">
                    <div id="vvBookmarksInternal"></div>
                </div>

                <!-- Annotation list (hidden) -->
                <div id="vvAnnotationsList" class="tab-pane show-control-panel">
                    <div id="vvAnnotationsListFilter" class="vvRightPaneControlPanel form-group-sm">
                        <div class="input-group input-group-sm">
                            <input type="text" class="form-control" />
                            <div class="input-group-btn vvFilterOptionsDropdown">
                                <button type="button" class="btn btn-default dropdown-toggle vvFilterOptionsDropdownBtn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span data-localize="annotationInfoList.userLabel">Users</span>&nbsp;<span class="caret"></span>
                                </button>
                                <ul id="vvFilterOptionsDropdownOptions" class="dropdown-menu dropdown-menu-right">
                                    <li><a data-localise="annotationInfoList.allUsersOption" href="#">All</a></li>
                                    <li role="separator" class="divider"></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div id="vvAnnotationsListInternal">

                    </div>
                </div>
            </div>
        </div>
    </div>
    <iframe id="vvDownloadFrame" name="vvDownloadFrame" style="display:none"></iframe>
</div>

<div class="contextMenu" id="vvThumbContextMenu" style="display: none">
    <ul>
        <li data-localize="thumbContextMenu.selectAll" id="vvSelectPagesAll">Select All</li>
        <li data-localize="thumbContextMenu.selectNone" id="vvSelectPagesNone">Select None</li>
        <li data-localize="thumbContextMenu.cut" id="vvCutPages">Cut</li>
        <li data-localize="thumbContextMenu.copy" id="vvCopyPages">Copy</li>
        <li data-localize="thumbContextMenu.delete" id="vvDeletePages">Delete</li>
        <li data-localize="thumbContextMenu.insertBefore" id="vvInsertPagesBefore">Insert Before</li>
        <li data-localize="thumbContextMenu.insertAfter" id="vvInsertPagesAfter">Insert After</li>
        <li data-localize="thumbContextMenu.newDocument" id="vvCopyPagesToNewDocument">Copy to New Document</li>
        <li data-localize="thumbContextMenu.cutNewDocument" id="vvCutPagesToNewDocument">Cut to New Document</li>
        <li data-localize="thumbContextMenu.addBookmark" id="vvAddBookmark">Add Bookmark</li>
        <li data-localize="thumbContextMenu.printPages" id="vvPrintPages">Print Pages</li>
        <li data-localize="thumbContextMenu.exportPages" id="vvExportPages">Export Pages</li>
    </ul>
</div>
<div class="contextMenu" id="vvSelectTextContextMenu" style="display: none">
    <ul>
        <li data-localize="selectTextContextMenu.performOcr" id="vvOcrContextMenuOcr">Perform OCR</li>
        <li data-localize="selectTextContextMenu.paste" id="vvSelectTextMenuPaste">Paste</li>
        <li data-localize="selectTextContextMenu.undoSplit" id="vvUndoSplitPane">Close Document Comparison</li>
        <li data-localize="selectTextContextMenu.copy" id="vvSelectTextMenuCopy">Copy</li>
        <li data-localize="selectTextContextMenu.highlight" id="vvSelectTextMenuHighlight">Highlight</li>
        <li data-localize="selectTextContextMenu.redact" id="vvSelectTextMenuRedact">Redact</li>
    </ul>
</div>
<div class="contextMenu nonselectable" id="vvDocThumbContextMenu" style="display: none">
    <ul>
        <li data-localize="docThumbContextMenu.splitImage" id="vvSplitImage">Document Comparison</li>
    </ul>
</div>

<div class="contextMenu" id="vvNoteTemplateContextMenu" style="display: none">
    <ul id="vvNoteTemplateCMenuList"></ul>
</div>
<div id="vvWaitIndicator" class="modal fade" role="dialog" aria-labelledby="vvWaitIndicator">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-body">
                    <img src="resources/loader.gif" alt="Wait Indicator" /><span data-localize="loadWaitDialog" id="vvWaitIndicatorText">Please wait while your image is loaded.</span>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="vvVideoWaitIndicator" class="modal fade" role="dialog" aria-labelledby="vvVideoWaitIndicator">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-body">
                    <div class="progress" id="waitIndicatorProgressBarContainer">
                        <div class="progress-bar" id="waitIndicatorProgressBar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <span data-localize="loadVideoDialog" id="vvVideoWaitIndicatorText">Please wait while your video is loaded.</span>
                </div>
            </div>
        </div>
    </div>
</div>


<div id="vvSaveDocumentIndicator" class="modal" role="dialog" aria-labelledby="vvSaveDocumentIndicator" data-backdrop="false">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-body">
                    <span data-localize="saveWaitDialog" id="vvSaveDocumentIndicatorText">Please wait while your document is saved.</span>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="vvPrintIndicator" class="modal fade" role="dialog" aria-labelledby="vvPrintIndicator">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-body">
                    <img src="resources/loader.gif" alt="Wait Indicator" /><span data-localize="printWaitDialog" id="vvPrintIndicatorText">Please wait while your document is printed.</span>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="vvErrorIndicator" class="modal fade" role="dialog" aria-labelledby="vvErrorIndicator">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-body">
                    <span data-localize="errorDialog" id="vvErrorIndicatorText"></span>
                    <div class="modal-footer">
                        <button type="button" id="vvNewErrorDialogCancelButton" class="btn btn-default" data-dismiss="modal">OK</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="vvEmailIndicator" class="modal fade" role="dialog" aria-labelledby="vvEmailIndicator">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-body">
                    <img src="resources/loader.gif" alt="Wait Indicator" /><span data-localize="emailWaitDialog" id="vvEmailIndicatorText">Please wait while your document is emailed.</span>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="vvOcrIndicator" class="modal fade" role="dialog" aria-labelledby="vvOcrIndicatorText">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-body">
                    <img src="resources/loader.gif" alt="OCR Wait Indicator" /><span data-localize="ocr.waitMessage" id="vvOcrIndicatorText">Please wait while your image is loaded.</span>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="vvDocumentNoteTemplateDialog">
    <div class="modal-content">
        <ul id="vvDocumentNoteTemplateList"></ul>
    </div>
</div>

<div class="modal" id="vvTagAllRedactionsDialog" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" data-localize="tagAllRedactionsDialog.title"></h4>
            </div>
            <div class="modal-body">
                <div id="vvAnnTagSearch">
                    <div data-localize="annPopUp.tag" id="vvAnnTagLabel" data-localize="tagAllRedactionsDialog.tagsLabel"></div>
                    <div id="vvAnnTagSearchValue">
                        <select id="vvAnnTagSearchSelect"></select>
                    </div>
                    <div id="vvAnnTagSearchChosen">
                        &nbsp;
                    </div>
                    <div class="alert alert-danger fade in" id="redactAllTagError" data-localize="tagAllRedactionsDialog.errorMessage">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" id="tagAllRedactionsOKButton" class="btn btn-primary" data-localize="tagAllRedactionsDialog.okButton"></button>
                <button type="button" id="tagAllRedactionsCancelButton" class="btn btn-default" data-dismiss="modal" data-localize="tagAllRedactionsDialog.cancelButton"></button>
            </div>
        </div>
    </div>
</div>


<div class="modal" id="vvEmptyEmailFields" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" data-localize="emptyEmailFields.dialogTitle"></h4>
            </div>
            <div class="modal-body">
                <span data-localize="emptyEmailFieldsDialog" id="vvEmptyEmailFieldsText"></span>
            </div>
            <div class="modal-footer">
                <button type="button" id="vvEmptyEmailFieldsDialogOKButton" class="btn btn-default" data-dismiss="modal">OK</button>
            </div>
        </div>
    </div>
</div>
<div class="modal" id="vvDeleteAnnotationDialog" tabindex="-1" role="dialog" aria-labelledby="vvDeleteAnn">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" data-localize="deleteAnnDialog.title"></h3>
            </div>
            <div class="modal-body">
                <span aria-hidden="true" class="vvWarning icon"></span>
                <span data-localize="deleteAnnDialog.value" id="vvDeleteAnnotationDialogText">Are you sure you wish to delete this annotation?></span>
            </div>
            <div class="modal-footer">
                <button type="button" id="deleteAnnotationButtonConfirm" class="btn btn-primary" data-localize="deleteAnnDialog.deleteButton"></button>
                <button type="button" class="btn btn-default" data-dismiss="modal" data-localize="deleteAnnDialog.cancelButton"></button>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="vvConfirmCropDialog" tabindex="-1" role="dialog" aria-labelledby="vvCropDialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" data-localize="cropDialog.title"></h3>
            </div>
            <div class="modal-body">
                <div data-localize="cropDialog.message" id="vvConfirmCropDialogText">Don't mess da crop</div>
            </div>
            <div class="modal-footer">
                <button type="button" id="vvConfirmCropDialogOK" class="btn btn-primary" data-localize="cropDialog.cropButton"></button>
                <button type="button" id="vvConfirmCropDialogCancel" class="btn btn-default" data-dismiss="modal" data-localize="cropDialog.cancelButton"></button>
            </div>
        </div>
    </div>
</div>
<div class="modal" id="vvConfirmChangesDialog" tabindex="-1" role="dialog" aria-labelledby="vvConfirmChanges">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" data-localize="confirmChangesDialog.dialogTitle"></h3>
            </div>
            <div class="modal-body">
                <span style="float:left; margin:0 7px 20px 0;"></span><div data-localize="confirmChangesDialog" id="vvConfirmChangesDialogText"></div>
            </div>
            <div class="modal-footer">
                <button type="button" id="vvConfirmChangesYes" class="btn btn-primary" data-localize="confirmChangesDialog.yesButton"></button>
                <button type="button" id="vvConfirmChangesNo" class="btn btn-default" data-dismiss="modal" data-localize="confirmChangesDialog.noButton"></button>
                <button type="button" class="btn btn-default" data-dismiss="modal" data-localize="confirmChangesDialog.cancelButton"></button>
            </div>
        </div>
    </div>
</div>
<div class="modal" id="vvDisableToolbarDialog" tabindex="-1" role="dialog" aria-labelledby="vvDisableToolbar">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="vvDisableToolbarDialogTitle"></h3>
            </div>
            <div class="modal-body">
                <div data-localize="disableToolbarDialog" id="vvDisableToolbarDialogText"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" data-localize="disableToolbarDialog.okButton"></button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="vvUploadLocalFilesDialog" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" data-localize="uploadDocumentDialog.title">Upload Document</h4>
            </div>
            <div class="modal-body">
                <form id="vvUploadLocalFileForm" name="vvUploadLocalFileForm" action="" method="post" target="_blank" enctype="multipart/form-data">
                    <div style="position:relative;">
                        <a class='btn btn-primary file-clicker' data-localize="uploadDocumentDialog.chooseFileButton">Choose File</a>
                        <input type="file" name="file" style='display:none' />
                        &nbsp;
                        <span class='label-info upload-file-info'></span>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" id="vvUploadLocalFileDialogOK" class="btn btn-primary" data-localize="uploadDocumentDialog.okButton">OK</button>
                <button type="button" id="vvUploadLocalFileDialogCancel" class="btn btn-default" data-dismiss="modal" data-localize="uploadDocumentDialog.cancelButton">Cancel</button>
            </div>
        </div>
    </div>

</div>

<div class="modal fade" id="vvAboutDialog" tabindex="-1" role="dialog" aria-labelledby="AboutDialog">
    <div class="modal-dialog modal-sm">
        <div class="modal-content" style="text-align: center">
            <div class="modal-header">
                <button type="button" id="aboutClose" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="vvAboutDialogTitle"></h4>
            </div>
            <div class="modal-body">
                <div id="vvAboutDialogContents">
                    <div id="vvAboutDialogText"></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" id="vvAboutDialogOKButton" class="btn btn-primary"></button>
                <button type="button" id="vvAboutDialogCancelButton" class="btn btn-default" data-dismiss="modal"></button>
            </div>
        </div>
    </div>
</div>

<div id="vvUserPreferencesDialog" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" id="userPreferencesClose" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h3 class="modal-title" data-localize="userPreferencesDialog.title"></h3>
            </div>
            <div class="modal-body">
                <div id="vvUserPreferencesErrorBanner" class="alert alert-warning"></div>
                <ul class="nav nav-tabs" role="tablist" style="visibility: hidden" id="vvUserPreferencesDialogTabs">
                    <li class="active" id="vvUPToolbarConfigTab" role="tab"><a data-localize="userPreferencesDialog.toolbarConfigTab" href="#vvUPToolbarConfig" data-toggle="tab">Toolbar Configurations</a></li>
                    <li id="vvUPAnnotationPropTab" role="tab"><a data-localize="userPreferencesDialog.annPropertiesTab" href="#vvUPAnnotationProp" data-toggle="tab">Annotation Properties</a></li>
                    <li id="vvUPCustomTextStampsTab" role="tab"><a data-localize="userPreferencesDialog.customTextStampsTab" href="#vvUPCustomTextStamps" data-toggle="tab">Custom Text Stamps</a></li>
                    <li id="vvUPNotesTemplateTab" role="tab"><a data-localize="userPreferencesDialog.notesTemplateTab" href="#vvUPNotesTemplates" data-toggle="tab">Notes Templates</a></li>
                    <li id="vvUPVideoTab" role="tab"><a data-localize="userPreferenceDialog.videoTab" href="#vvUPVideo" data-toggle="tab">Video Preferences</a></li>
                    <li id="vvUPGeneralTab" role="tab"><a data-localize="userPreferencesDialog.generalTab" href="#vvUPGeneral" data-toggle="tab">General Preferences</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" role="tabpanel" aria-labelledby="vvUPToolbarConfigTab" id="vvUPToolbarConfig">
                        <div class="list-group" id="vvUPImageControl">
                            <label id="vvUPImageControlHeader" for="ImageControlsCheck" class="list-group-item list-group-item-heading">
                                <input type="checkbox" id="ImageControlsCheck">
                                <span data-localize="userPreferencesDialog.imageControl">Image Controls</span>
                            </label>
                        </div>
                        <div class="list-group" id="vvUPAnnotationToolbar">
                            <label id="vvUPAnnotationToolbarHeader" for="AnnotationToolbarCheck" class="list-group-item list-group-item-heading">
                                <input type="checkbox" id="AnnotationToolbarCheck">
                                <span data-localize="userPreferencesDialog.annToolbar">Annotation Toolbar</span>
                            </label>
                        </div>
                    </div>
                    <div class="tab-pane" role="tabpanel" aria-labelledby="vvUPAnnotationPropTab" id="vvUPAnnotationProp">
                        <div class="vvUPDialogSidebar">
                            <div class="vvUPOptionsListHeader list-group-item-heading list-group-item" data-localize="userPreferencesDialog.annHeader">Annotation Type</div>
                            <div class="vvUPSidebarScroller">
                                <ul class="nav nav-pills nav-stacked" role="tablist" id="vvUPAnnotationsList"></ul>
                            </div>
                        </div>
                        <div class="vvUPEditFormatPane">
                            <div id="vvAnnotationPropertiesHeader" class="list-group-item-heading list-group-item vvUPOptionsListHeader">
                                <span data-localize="userPreferencesDialog.annPropFor">Annotation Properties for</span> <span id="vvSelectedAnnotation"> </span>
                            </div>
                            <form id="vvUPAnnotationProperties" class="tab-content">
                                <div id="vvUPAnnotationEditTemplate" class="tab-pane vvUPAnnPropPane" role="tabpanel">
                                    <div class="row form-group vvUPAnnotationColor">
                                        <label class="control-label col-xs-8 vvUPAnnLineColorLabel"
                                               for="vvUPAnnotationColorChoices ">
                                            <span data-localize="userPreferencesDialog.lineColor">Line Color #</span>
                                            <div class="col-xs-offset-4 vvUPAnnotationLineColorChoices"></div>
                                        </label>
                                    </div>
                                    <div class="row form-group vvUPAnnotationColor">
                                        <label class="control-label col-xs-8 vvUPAnnFillColorLabel" for="vvUPAnnotationColorChoices">
                                            <span data-localize="userPreferencesDialog.fillColor">Fill Color #</span>
                                            <div class="col-xs-offset-4 vvUPAnnotationFillColorChoices"></div>
                                        </label>
                                    </div>
                                    <div class="row form-group vvUPAnnotationColor">
                                        <label class="control-label col-xs-8 vvUPAnnTextColorLabel" for="vvUPAnnotationColorChoices">
                                            <span data-localize="userPreferencesDialog.fontColor">Font Color: #</span>
                                            <div class="col-xs-offset-4 vvUPAnnotationFontColorChoices"></div>
                                        </label>
                                    </div>

                                    <div class="row form-group form-group-sm form-inline vvUPAnnotationLineThickness">
                                        <label for="vvUPAnnThicknessCells" class="control-label col-xs-4 vvUPAnnLineSizeLabel">
                                            <span data-localize="userPreferencesDialog.lineSize">Line Size: </span>
                                            <span class="vvUPAnnLineSizeValue">1</span>
                                        </label>
                                        <div class="btn-group vvUPAnnThicknessCells" role="group">
                                            <button type="button" data-vvlinewidth="1" class="vvUPAnnThicknessCell-1 btn btn-secondary vvUPAnnThicknessCell vvAnnThicknessCell">
                                                <div class="vvAnnThicknessElement vvUPAnnThicknessElement-1" style="width: 1px;"> </div>
                                            </button>
                                            <button type="button" data-vvlinewidth="2" class="btn btn-secondary vvUPAnnThicknessCell-2 vvUPAnnThicknessCell vvAnnThicknessCell">
                                                <div class="vvAnnThicknessElement vvUPAnnThicknessElement-2" style="width: 2px;"> </div>
                                            </button>
                                            <button type="button" data-vvlinewidth="3" class="btn btn-secondary vvUPAnnThicknessCell-3 vvUPAnnThicknessCell vvAnnThicknessCell">
                                                <div class="vvUPAnnThicknessElement-3 vvAnnThicknessElement" style="width: 3px;"> </div>
                                            </button>
                                            <button type="button" data-vvlinewidth="4" class="btn vvUPAnnThicknessCell-4 btn-secondary vvUPAnnThicknessCell vvAnnThicknessCell">
                                                <div class="vvUPAnnThicknessElement-4 vvAnnThicknessElement" style="width: 4px;"> </div>
                                            </button>
                                            <button type="button" data-vvlinewidth="5" class="vvUPAnnThicknessCell-5 btn btn-secondary vvUPAnnThicknessCell vvAnnThicknessCell">
                                                <div class="vvUPAnnThicknessElement-5 vvAnnThicknessElement" style="width: 5px;"> </div>
                                            </button>
                                            <button type="button" data-vvlinewidth="6" class="vvUPAnnThicknessCell-6 btn btn-secondary vvUPAnnThicknessCell vvAnnThicknessCell">
                                                <div class="vvUPAnnThicknessElement-6 vvAnnThicknessElement" style="width: 6px;"> </div>
                                            </button>
                                            <button type="button" data-vvlinewidth="7" class="vvUPAnnThicknessCell-7 btn btn-secondary vvUPAnnThicknessCell vvAnnThicknessCell">
                                                <div class="vvUPAnnThicknessElement-7 vvAnnThicknessElement" style="width: 7px;"> </div>
                                            </button>
                                            <button type="button" data-vvlinewidth="8" class="vvUPAnnThicknessCell-8 btn btn-secondary vvUPAnnThicknessCell vvAnnThicknessCell">
                                                <div class="vvUPAnnThicknessElement-8 vvAnnThicknessElement" style="width: 8px;"> </div>
                                            </button>
                                            <button type="button" data-vvlinewidth="9" class="vvUPAnnThicknessCell-9 btn btn-secondary vvUPAnnThicknessCell vvAnnThicknessCell">
                                                <div class="vvUPAnnThicknessElement-9 vvAnnThicknessElement" style="width: 9px;"> </div>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="row vvUPTextAnnOptions">
                                        <div class="form-group form-inline vvUPAnnTextFace">
                                            <label data-localize="userPreferencesDialog.font" class="control-label col-xs-4">Font: </label>
                                            <select class="vvUPAnnTextFaceSelect form-control"> </select>
                                        </div>
                                        <div class="vvUPAnnTextSize form-group form-inline">
                                            <label class="control-label col-xs-4" data-localize="userPreferencesDialog.fontSize">Font Size: </label>
                                            <select class="form-control vvUPAnnTextSizeSelect"> </select>
                                        </div>
                                        <div id="vvUPAnnTextBold" class="checkbox form-group form-inline">
                                            <label class="control-label col-xs-offset-4">
                                                <input class="vvUPAnnTextStyleBold" type="checkbox" name="Bold" value="Bold" />
                                                <b data-localize="userPreferencesDialog.bold">Bold</b>
                                            </label>
                                        </div>
                                        <div class="vvUPAnnTextItalic checkbox form-group form-inline">
                                            <label class="control-label col-xs-offset-4">
                                                <input class="vvUPAnnTextStyleItalic" type="checkbox" name="Italic" value="Italic" />
                                                <i data-localize="userPreferencesDialog.italic">Italic</i>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="tab-pane" role="tabpanel" aria-labelledby="vvUPCustomTextStampsTab" id="vvUPCustomTextStamps">
                        <div id="vvUPMainStampsPane">
                            <div class="vvUPDialogSidebar">
                                <div class="vvUPOptionsListHeader list-group-item-heading list-group-item">
                                        <span id="vvUPCustomStampHeader"
                                              data-localize="userPreferencesDialog.stampsHeader">Stamps</span>
                                    <div id="vvUPAddAndRemoveCustomStamp" class="btn-group btn-group-xs" role="group" aria-label="Add and remove buttons">
                                        <button type="button" class="btn btn-primary" id="vvUPAddCustomStamp" data-localize="userPreferencesDialog.addNewStamp">Add</button>
                                        <button type="button" class="btn btn-primary" id="vvUPRemoveCustomStamp" data-localize="userPreferencesDialog.removeStamp">Remove</button>
                                    </div>
                                </div>
                                <div class="vvUPSidebarScroller">
                                    <ul class="nav nav-pills nav-stacked" role="tablist" id="vvUPCustomStamps"></ul>
                                </div>
                            </div>
                            <div class="vvUPEditFormatPane">
                                <div id="vvUPCustomStampPropertiesHeader" class="list-group-item-heading list-group-item vvUPOptionsListHeader">
                                    <span data-localize="userPreferencesDialog.stampPropFor">Stamp Properties for</span>
                                    <span id="vvUPSelectedCustomStampName"> </span>
                                </div>
                                <div class="vvUPSidebarScroller">
                                    <form id="vvUPCustomStampEdit">
                                        <div id="vvUPStampEditPaneTemplate" style="display: none;" class="vvUPStampEditPane tab-pane">
                                            <div class="form-group form-inline form-group-sm row">
                                                <label data-localize="userPreferencesDialog.displayName" class="control-label col-xs-4 vvUPCustomStampDisplayName">Display Name:</label>
                                                <input type="text" class="form-control vvUPCustomStampDisplayNameInput" />
                                            </div>

                                            <div class="form-group form-inline form-group-sm row">
                                                <label data-localize="userPreferencesDialog.stampText" class="control-label col-xs-4 vvUPCustomStampStampText">Stamp Text:</label>
                                                <input type="text" class="form-control vvUPCustomStampStampTextInput">
                                            </div>

                                            <div id="vvUPStampColor" class="form-group form-inline form-group-sm row">
                                                <label class="control-label col-xs-4 vvUPStampTextColorLabel">
                                                    <span data-localize="userPreferencesDialog.fontColor">Font Color: #</span>
                                                </label>
                                                <div class="col-xs-offset-4 vvUPStampColorChoices"></div>
                                            </div>


                                            <div class="form-group form-inline form-group-sm row">
                                                <label data-localize="userPreferencesDialog.font" class="control-label col-xs-4 vvUPStampTextFaceLabel">Font: </label>
                                                <select class="form-control vvUPCustomTextFaceSelect"> </select>
                                            </div>
                                            <div class="form-group form-inline form-group-sm row">
                                                <label class="control-label col-xs-4 vvUPStampTextSizeLabel" data-localize="userPreferencesDialog.fontSize">Font Size: </label>
                                                <select class="form-control vvUPCustomTextSizeSelect"> </select>
                                            </div>
                                            <div class="checkbox form-group form-inline form-group-sm row">
                                                <label class="control-label col-xs-offset-4">
                                                    <input class="vvUPCustomTextStyleBold" type="checkbox" name="Bold" value="Bold" />
                                                    <b data-localize="userPreferencesDialog.bold">Bold</b>
                                                </label>
                                            </div>
                                            <div class="checkbox form-group form-inline form-group-sm row">
                                                <label class="control-label col-xs-offset-4">
                                                    <input class="vvUPCustomTextStyleItalic" type="checkbox" name="Italic" value="Italic" />
                                                    <i data-localize="userPreferencesDialog.italic">Italic</i>
                                                </label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                        <div id="vvUPCustomStampPreviewWrapper" class="list-group-item">
                            <div id="vvUPCustomStampPreview">
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" role="tabpanel" aria-labelledby="vvUPNotesTemplateTab" id="vvUPNotesTemplates">
                        <div id="vvUPMainNoteTemplatesPane">
                            <div class="vvUPDialogSidebar">
                                <div class="vvUPOptionsListHeader list-group-item-heading list-group-item">
                                    <span id="vvUPNoteTemplateHeader" data-localize="userPreferencesDialog.templatesHeader">Templates</span>
                                    <div id="vvUPAddAndRemoveTemplate" class="btn-group btn-group-xs" role="group" aria-label="Add and remove buttons">
                                        <button type="button" class="btn btn-primary" id="vvUPAddNoteTemplate" data-localize="userPreferencesDialog.addNewTemplate">Add</button>
                                        <button type="button" class="btn btn-primary" id="vvUPRemoveNoteTemplate" data-localize="userPreferencesDialog.removeNewTemplate">Remove</button>
                                    </div>
                                </div>
                                <div class="vvUPSidebarScroller">
                                    <ul class="nav nav-pills nav-stacked" role="tablist" id="vvUPNoteTemplates"></ul>
                                </div>
                            </div>
                            <div class="vvUPEditFormatPane">
                                <div id="vvUPNoteTemplatePropertiesHeader" class="list-group-item-heading list-group-item vvUPOptionsListHeader">
                                    <span data-localize="userPreferencesDialog.templatePropFor">Template Properties for</span>
                                    <span id="vvUPSelectedNoteTemplateName"></span>
                                </div>
                                <div class="vvUPSidebarScroller">
                                    <form id="vvUPNoteTemplateEdit">
                                        <div id="vvUPTemplateEditPaneTemplate" style="display: none;" class="vvUPTemplateEditPane tab-pane">
                                            <div class="form-group form-inline form-group-sm row">
                                                <label data-localize="userPreferencesDialog.templateDisplayName" class="control-label col-xs-4 vvUPNoteTemplateName">Template Name:</label>
                                                <input type="text" class="form-control vvUPNoteTemplateDisplayNameInput" />
                                            </div>

                                            <div class="form-group form-inline form-group-sm row">
                                                <label data-localize="userPreferencesDialog.templateText" class="control-label col-xs-4 vvUPNoteTemplateText">Template Text:</label>
                                                <input type="text" class="form-control vvUPNoteTemplateTextInput">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane" role="tabpanel" aria-labelledby="vvUPVideoTab" id="vvUPVideo">
                        <div>
                            <div id="vvUPVideoRadioButtonsHeader" class="vvUPOptionsListHeader list-group-item-heading list-group-item" data-localize="userPreferencesDialog.generalVideo">General Video Preferences</div>
                            <form id="vvUPVideoGeneralForm" class="vvUPGeneralForm">
                                <div class="form-group">
                                    <input id="vvUPVideoAutoplay" class=" col-xs-offset-3" name="video" type="checkbox"> <label for="vvUPVideoAutoplay" class="control-label" data-localize="userPreferencesDialog.videoAutoplay">Video Autoplay</label>
                                </div>
                                <div class="form-group">
                                    <input id="vvUPVideoMute" class=" col-xs-offset-3" name="video" type="checkbox"> <label for="vvUPVideoMute" class="control-label" data-localize="userPreferencesDialog.videoMute">Mute</label>
                                </div>
                                <div class="form-group">
                                    <input id="vvUPVideoControls" class=" col-xs-offset-3" name="video" type="checkbox"> <label for="vvUPVideoControls" class="control-label" data-localize="userPreferencesDialog.videoControls">Video Controls</label>
                                </div>
                                <div class="form-group">
                                    <input id="vvUPVideoStretch" class=" col-xs-offset-3" name="video" type="checkbox"> <label for="vvUPVideoStretch" class="control-label" data-localize="userPreferencesDialog.stretch">Enable Video Stretching</label>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="tab-pane" role="tabpanel" aria-labelledby="vvUPGeneralTab" id="vvUPGeneral">
                        <div>
                            <div id="vvUPDefaultFitToHeader" class="vvUPOptionsListHeader list-group-item-heading list-group-item" data-localize="userPreferencesDialog.defaultFitTo">Default Fit to Preferences </div>
                            <form id="vvUPDefaultFitToForm" class="vvUPGeneralForm">
                                <div class="form-group">
                                    <input id="vvUPFitToWindow" class="vvUPDefaultFitRadio col-xs-offset-3" name="FitTo" type="radio" checked=""> <label for="vvUPFitToWindow" class="control-label" data-localize="userPreferencesDialog.fitToWindow">Fit to Window</label>
                                </div>
                                <div class="form-group">
                                    <input id="vvUPFitToHeight" class="vvUPDefaultFitRadio col-xs-offset-3" name="FitTo" type="radio"> <label for="vvUPFitToHeight" class="control-label" data-localize="userPreferencesDialog.fitToHeight">Fit to Height</label>
                                </div>
                                <div class="form-group">
                                    <input id="vvUPFitToWidth" class="vvUPDefaultFitRadio col-xs-offset-3" name="FitTo" type="radio"> <label for="vvUPFitToWidth" class="control-label" data-localize="userPreferencesDialog.fitToWidth">Fit to Width</label>
                                </div>
                                <div class="form-group form-inline">
                                    <input id="vvUPFitCustom" class="vvUPDefaultFitRadio col-xs-offset-3" name="FitTo" type="radio"> <label for="vvUPFitCustom" class="control-label" data-localize="userPreferencesDialog.zoomPercent">Zoom Percent</label>
                                    <select class="form-control col-xs-offset-1" id="vvUPZoomLevelSelect"></select>
                                </div>
                            </form>

                            <div id="vvUPDefaultFitToHeader" class="vvUPOptionsListHeader list-group-item-heading list-group-item" data-localize="userPreferencesDialog.usernameTitle">Username Settings</div>

                            <form id="vvUPUsername" class="vvUPGeneralForm">
                                <div class="form-group form-inline">
                                    <label data-localize="userPreferencesDialog.username" class="control-label" for="vvUPUsernameInput"></label>
                                    <input type="text" data-localize="userPreferencesDialog.userNameInput" class="form-control col-xs-offset-1" id="vvUPUsernameInput">
                                </div>
                            </form>

                            <div id="vvUPDefaultTabHeader" class="vvUPOptionsListHeader list-group-item-heading list-group-item" data-localize="userPreferencesDialog.defaultTab">Default Tab Preferences </div>

                            <form id="vvUPDefaultTab" class="vvUPGeneralForm">
                                <div class="form-group">
                                    <input id="vvUPPageTab" class="vvUPDefaultTabRadio col-xs-offset-3" name="Tab" type="radio" checked=""> <label for="vvUPPageTab" class="control-label" data-localize="userPreferencesDialog.pageTab">Pages Tab</label>
                                </div>
                                <div class="form-group">
                                    <input id="vvUPDocumentTab" class="vvUPDefaultTabRadio col-xs-offset-3" name="Tab" type="radio"> <label for="vvUPDocumentTab" class="control-label" data-localize="userPreferencesDialog.documentTab">Document Tab</label>
                                </div>
                                <div class="form-group">
                                    <input id="vvUPSearchTab" class="vvUPDefaultTabRadio col-xs-offset-3" name="Tab" type="radio"> <label for="vvUPSearchTab" class="control-label" data-localize="userPreferencesDialog.searchTab">Search Tab</label>
                                </div>
                                <div class="form-group">
                                    <input id="vvUPNoteTab" class="vvUPDefaultTabRadio col-xs-offset-3" name="Tab" type="radio"> <label for="vvUPNoteTab" class="control-label" data-localize="userPreferencesDialog.noteTab">Document Notes Tab</label>
                                </div>
                                <div class="form-group">
                                    <input id="vvUPBookmarkTab" class="vvUPDefaultTabRadio col-xs-offset-3" name="Tab" type="radio"> <label for="vvUPBookmarkTab" class="control-label" data-localize="userPreferencesDialog.bookmarkTab">Bookmarks Tab</label>
                                </div>
                                <div class="form-group">
                                    <input id="vvUPAnnotationTab" class="vvUPDefaultTabRadio col-xs-offset-3" name="Tab" type="radio"> <label for="vvUPAnnotationTab" class="control-label" data-localize="userPreferencesDialog.annotationTab">Annotation List Tab</label>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <div>
                        <button type="button" id="vvUserPreferencesDialogResetButton" data-localize="userPreferencesDialog.resetButton" class="btn btn-primary"></button>
                        <button type="button" id="vvUserPreferencesDialogSaveButton" data-localize="userPreferencesDialog.saveButton" class="btn btn-primary"></button>
                        <button type="button" id="vvUserPreferencesDialogCancelButton" class="btn btn-primary" data-dismiss="modal" data-localize="userPreferencesDialog.cancelButton"></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="vvRedactionWarningDialog" tabindex="-1" role="dialog" aria-labelledby="RedactionWarning">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div id="vvRedactionWarningDialogContents">
                    <div id="vvRedactionWarningDialogText"></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" id="vvRedactionWarningDialogOKButton" class="btn btn-primary"></button>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="vvOverwriteDialog" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <span data-localize="overwriteDialog.title"></span>
            </div>
            <div class="modal-body">
                <span data-localize="overwriteDialog.text">The format of this document must be changed to PDF or TIFF to save these changes. Would you like to continue and overwrite the original document's format?</span>
            </div>
            <div class="modal-footer">
                <button type="button" id="vvOverwriteDialogOverwriteButton" class="btn btn-primary" data-localize="overwriteDialog.overwriteButton">Save and Overwrite</button>
                <button type="button" id="vvOverwriteDialogSaveAsButton" class="btn btn-primary" data-localize="overwriteDialog.saveAsButton">Save to New Document</button>
                <button type="button" id="vvOverwriteDialogCancelButton" class="btn btn-secondary" data-dismiss="modal" data-localize="overwriteDialog.cancelButton">Cancel</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="vvKeyboardHints" tabindex="-1" role="dialog" aria-labelledby="vvKeyboardHints" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" id="keyboardHintsClose" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="vvKeyboardShortcutsTitle" data-localize="hotkeyHints.title"></h4>
            </div>
            <div class="modal-content">
                <div id="vvKeyboardHintsContents">
                    <div id="vvKeyboardHintsText"></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" id="vvKeyboardHintsDialogOKButton" class="btn btn-primary" data-dismiss="modal" data-localize="aboutDialog.okButton"></button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="vvImageInfoDialog" tabindex="-1" role="dialog" aria-labelledby="vvImageInfo" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" id="imageInfoClose" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="vvImageInfoTitle"></h4>
            </div>
            <div class="modal-body">
                <div id="vvImageInfoContents">
                    <div id="vvImageInfoText"></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" id="vvImageInfoDialogOKButton" class="btn btn-primary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade error-download-dialog" id="vvPasswordProtectedFileDialog" tabindex="-1" role="dialog" aria-labelledby="vvPasswordProtectedFileTitle" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="vvPasswordProtectedFileTitle" data-localize="passwordProtectedFileDialog.title">Password-Protected File</h4>
            </div>
            <div class="modal-body">
                <span data-localize="passwordProtectedFileDialog.error">This file is encrypted or password-protected</span>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary download-button" data-localize="passwordProtectedFileDialog.downloadButton"></button>
                <button type="button" class="btn btn-default cancel-button" data-dismiss="modal" data-localize="passwordProtectedFileDialog.cancelButton"></button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade error-download-dialog" id="vvExportUnsupportedFileDialog" tabindex="-1" role="dialog" aria-labelledby="vvExportUnsupportedFile" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="vvExportUnsupportedFileTitle" data-localize="exportUnsupportedFileDialog.title"></h4>
            </div>
            <div class="modal-body">
                <span data-localize="exportUnsupportedFileDialog.error" id="vvExportUnsupportedFileText">This format cannot be viewed</span>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary download-button" data-localize="exportUnsupportedFileDialog.downloadButton"></button>
                <button type="button" class="btn btn-default cancel-button" data-dismiss="modal" data-localize="exportUnsupportedFileDialog.cancelButton"></button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="vvSplitNotAllowedDialog" tabindex="-1" role="dialog" aria-labelledby="vvSplitNotAllowed" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="vvSplitNotAllowedTitle" data-localize="splitNotAllowedDialog.title"></h4>
            </div>
            <div class="modal-body">
                <span data-localize="splitNotAllowedDialog.error" id="vvSplitNotAllowedText">Please open a document before entering compare document mode.</span>
            </div>
            <div class="modal-footer">
                <button type="button" id="vvSplitNotAllowedOkButton" class="btn btn-primary" data-localize="splitNotAllowedDialog.OkButton">OK</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="vvClipboard" tabindex="-1" role="dialog" aria-labelledby="vvClipboard" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="vvClipboardTitle"></h4>
            </div>
            <div class="modal-body">
                <div id="vvClipboardContents">
                    <textarea id="vvClipboardTextarea" readonly="readonly"></textarea>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal" data-localize="clipboardDialog.okButton"></button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="vvCurrentExceptionDialog" tabindex="-1" role="dialog" aria-labelledby="vvCurrentException" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            </div>
            <div class="modal-body">
                <span id="vvCurrentExceptionText"></span>
            </div>
            <div class="modal-footer">
                <button type="button" id="vvCurrentExceptionOKButton" class="btn btn-default" data-dismiss="modal">OK</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="vvBookmarkDialog" tabindex="-1" role="dialog" aria-labelledby="vvBookmark" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" id="bookmarksClose" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="vvBookmarkTitle" data-localize="bookmarkDialog.title"></h4>
            </div>
            <div class="modal-body">
                <div id="vvBookmarkDialogNote">
                    <span data-localize="bookmarkDialog.bookmarkNote">Bookmark Note</span>:
                    <input id="vvBookmarkDialogNoteInput" type="text" name="vvBookmarkDialogNoteInput" />
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" id="vvBookmarkDialogOKButton" class="btn btn-primary" data-localize="bookmarkDialog.okButton"></button>
                <button type="button" id="vvBookmarkDialogCancelButton" class="btn btn-default" data-dismiss="modal" data-localize="bookmarkDialog.cancelButton"></button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="vvPictureControlsDialog" tabindex="-1" role="dialog" aria-labelledby="vvPictureControls" aria-hidden="true" data-backdrop="false">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" id="pictureControlsClose" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="vvPictureControlsTitle" data-localize="pictureControls.title"></h4>
            </div>
            <div class="modal-body">
                <form>
                    <div id="vvBrightness" class="row">
                        <span class="vvBrightnessIcon icon picture-controls-icon"></span>
                        <input type="text" id="vvBrightnessSlider" value="" data-slider-min="-125" data-slider-max="125" data-slider-step="1" data-slider-value="0" data-slider-tooltip="hide">
                        <span class="sliderValue" id="vvBrightnessSliderVal"></span>
                    </div>
                    <div id="vvContrast" class="row">
                        <span class="vvContrastIcon icon picture-controls-icon"></span>
                        <input type="text" id="vvContrastSlider" value="" data-slider-min="-125" data-slider-max="125" data-slider-step="1" data-slider-value="0" data-slider-tooltip="hide">
                        <span class="sliderValue" id="vvContrastSliderVal"></span>
                    </div>
                    <div id="vvGamma" class="row">
                        <span class="vvGammaIcon icon picture-controls-icon"></span>
                        <input type="text" id="vvGammaSlider" value="" data-slider-min="0" data-slider-max="400" data-slider-step="1" data-slider-value="0" data-slider-tooltip="hide">
                        <span class="sliderValue" id="vvGammaSliderVal"></span>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" id="vvPictureControlsDialogOKButton" class="btn btn-primary" data-dismiss="modal" data-localize="pictureControls.okButton"></button>
                <button type="button" id="vvPictureControlsDialogCancelButton" class="btn btn-default" data-dismiss="modal" data-localize="pictureControls.cancelButton"></button>
            </div>
        </div>
    </div>
</div>

<div id="vvAnnPopUp">
    <form id="vvAnnPopUpForm">
        <div class="row" id="vvAnnPopUpEditTextForm">
            <div class="form-group-sm col-md-12">
                <label data-localize="annPopUp.editText.title" for="vvAnnPopUpEditTextArea">Edit Text</label>
                <textarea class="form-control" id="vvAnnPopUpEditTextArea" rows="1"></textarea>
                <button type="button" id="vvAnnPopUpEditTextSaveBtn" data-localize="annPopUp.editText.save" class="btn btn-secondary btn-sm">Save</button>
                <button type="button" id="vvAnnPopUpEditTextCancelBtn" data-localize="annPopUp.editText.cancel" class="btn btn-secondary btn-sm">Cancel</button>
            </div>
        </div>

        <div id="vvAnnPopUpProperties" class="row">
            <div id="vvAnnColor" class="form-group-sm col-md-12">
                <div>
                    <label id="vvAnnLineColorLabel"
                           class="control-label">
                        <span data-localize="annPopUp.lineColorGroupLabel.value">Line Color:</span>
                        <div id="vvAnnLineColorChoices"></div>
                    </label>
                    <div style="clear:both; margin:auto; height:0; line-height:0"></div>
                </div>
                <div>
                    <label id="vvAnnFillColorLabel"
                           class="control-label">
                        <span data-localize="annPopUp.fillColorGroupLabel.value">Fill Color:</span>
                        <div id="vvAnnFillColorChoices"></div>
                    </label>
                    <div style="clear:both; margin:auto; height:0; line-height:0"></div>
                </div>
                <div>
                    <label id="vvAnnTextColorLabel"
                           class="control-label">
                        <span data-localize="annPopUp.fontColorGroupLabel.value">Font Color:</span>
                        <div id="vvAnnTextColorChoices"></div>
                    </label>
                    <div style="clear:both; margin:auto; height:0; line-height:0"></div>
                </div>
            </div>
            <div id="vvAnnThickness" class="form-group-sm col-md-12">
                <label for="vvAnnThicknessCells" id="vvAnnLineSizeLabel" class="control-label">
                    <span data-localize="annPopUp.lineSizeGroupLabel.value">Line Size: </span>
                    <span id="vvAnnLineSizeValue">1</span>
                </label>
                <div id="vvAnnThicknessCells" class="btn-group" role="group">
                    <button id="vvAnnThicknessCell-1" type="button" class="btn btn-secondary vvAnnThicknessCell">
                        <div id="vvAnnThicknessElement-1" class="vvAnnThicknessElement" style="width: 1px;"> </div>
                    </button>
                    <button id="vvAnnThicknessCell-2" type="button" class="btn btn-secondary vvAnnThicknessCell">
                        <div id="vvAnnThicknessElement-2" class="vvAnnThicknessElement" style="width: 2px;"> </div>
                    </button>
                    <button id="vvAnnThicknessCell-3" type="button" class="btn btn-secondary vvAnnThicknessCell">
                        <div id="vvAnnThicknessElement-3" class="vvAnnThicknessElement" style="width: 3px;"> </div>
                    </button>
                    <button id="vvAnnThicknessCell-4" type="button" class="btn btn-secondary vvAnnThicknessCell">
                        <div id="vvAnnThicknessElement-4" class="vvAnnThicknessElement" style="width: 4px;"> </div>
                    </button>
                    <button id="vvAnnThicknessCell-5" type="button" class="btn btn-secondary vvAnnThicknessCell">
                        <div id="vvAnnThicknessElement-5" class="vvAnnThicknessElement" style="width: 5px;"> </div>
                    </button>
                    <button id="vvAnnThicknessCell-6" type="button" class="btn btn-secondary vvAnnThicknessCell">
                        <div id="vvAnnThicknessElement-6" class="vvAnnThicknessElement" style="width: 6px;"> </div>
                    </button>
                    <button id="vvAnnThicknessCell-7" type="button" class="btn btn-secondary vvAnnThicknessCell">
                        <div id="vvAnnThicknessElement-7" class="vvAnnThicknessElement" style="width: 7px;"> </div>
                    </button>
                    <button id="vvAnnThicknessCell-8" type="button" class="btn btn-secondary vvAnnThicknessCell">
                        <div id="vvAnnThicknessElement-8" class="vvAnnThicknessElement" style="width: 8px;"> </div>
                    </button>
                    <button id="vvAnnThicknessCell-9" type="button" class="btn btn-secondary vvAnnThicknessCell">
                        <div id="vvAnnThicknessElement-9" class="vvAnnThicknessElement" style="width: 9px;"> </div>
                    </button>
                </div>
            </div>
            <div id="vvAnnTextForm">
                <div id="vvAnnTextFace" class="form-group-sm col-md-7">
                    <label for="vvAnnTextFaceSelect" data-localize="annPopUp.fontFaceLabel.value" id="vvAnnTextFaceLabel" class="control-label">Font: </label>
                    <select id="vvAnnTextFaceSelect" class="form-control"> </select>
                </div>
                <div id="vvAnnTextSize" class="form-group-sm col-md-5">
                    <label for="vvAnnTextSizeSelect" class="control-label" data-localize="annPopUp.fontSizeLabel.value" id="vvAnnTextSizeLabel">Font Size: </label>
                    <select id="vvAnnTextSizeSelect" class="form-control"> </select>
                </div>
                <div id="vvAnnTextStyle" class="checkbox form-group-sm col-md-12">
                    <label for="vvAnnTextStyleBold" class="control-label col-md-6">
                        <input id="vvAnnTextStyleBold" type="checkbox" name="Bold" value="Bold" />
                        <b data-localize="annPopUp.bold">Bold</b>
                    </label>
                    <label for="vvAnnTextStyleItalic" class="control-label col-md-6">
                        <input id="vvAnnTextStyleItalic" type="checkbox" name="Italic" value="Italic" />
                        <i data-localize="annPopUp.italic">Italic</i>
                    </label>
                </div>
            </div>
        </div>

        <div class="row" id="vvAnnotationNotes">
            <div class="col-xs-12">
                <button type="button" data-toggle="collapse" data-target="#vvAnnotationNotesArea" id="vvAnnotationViewButton" data-localize="annPopUp.showAnnNotes.title" class="btn btn-secondary btn-sm btn-block">Annotation Notes</button>
            </div>
            <div id="vvAnnotationNotesArea" class="form-group-sm col-xs-12 collapse">
                <div id="vvAnnotationNotesAdder" class="form-group-sm">
                    <label for="vvAnnotationNoteContentInput" class="control-label" id="vvAnnotationNoteAdderAuthor"> </label>
                    <input id="vvAnnotationNoteContentInput" class="form-control" type="text" name="vvAnnotationNoteContentInputName">
                    <button type="button" id="vvAnnotationNoteAddButton" data-localize="annPopUp.addAnnNote" class="btn btn-secondary btn-sm">Add Annotation Note</button>
                </div>
                <div id="vvAnnotationNotesInternal" class="vvNotesInternal">

                </div>
            </div>
        </div>
        <div class="row">
            <div id="vvAnnTag" class="col-xs-12 form-group-sm">
                <label for="vvAnnTagList" data-localize="annPopUp.tag" id="vvAnnTagLabel">Tag(s):</label>
                <div id="vvAnnTagChosen">
                </div>
                <div class="dropdown">
                    <button class="vvAnnTagChosenBox dropdown-toggle"
                            data-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false"
                            type="button"
                            id="vvAddTagButton">
                        Add Tag
                    </button>
                    <ul id="vvAnnTagList" class="dropdown-menu" aria-labelledby="vvAddTagButton"> </ul>
                </div>
            </div>
        </div>
        <div class="row" id="vvAnnotationInformationRow">
            <div id="vvAnnotationRevisionHistoryButton" class="col-xs-4 pull-right">
                <button data-localize="annPopUp.annRevisions.viewRevisions"
                        id="vvAnnViewRevisions"
                        class="vvAnnPopUpButton icon btn btn-secondary"
                        type="button"
                        data-toggle="collapse"
                        data-target="#vvAnnotationRevisionHistory">
                    <!--Separate inner icon span so the icon can be rotated. note the parent still has .icon for styling-->
                    <span aria-hidden="true" class="vvCollapse icon"></span>
                </button>
            </div>
            <div id="vvAnnotationRevisionHistory" class="col-xs-8 collapse">
            </div>
            <div id="vvAnnotationInformation" class="col-xs-8">
                <div class="vvAnnPopUpInfo">
                    <label id="vvAnnCreateText" for="vvAnnCreateUser" data-localize="annPopUp.annCreateText">Created by: </label>
                    <div id="vvAnnCreateUser"></div>
                </div>
                <div class="vvAnnPopUpInfo">
                    <label id="vvAnnDateText" for="vvAnnCreateDate" data-localize="annPopUp.annDateText">On: </label>
                    <div id="vvAnnCreateDate"></div>
                </div>
            </div>

        </div>
    </form>
    <div class="btn-group-wrap">
        <div class="btn-group">

            <button data-localize="annPopUp.copyAnn"
                    id="vvAnnCopyButton"
                    class="vvAnnPopUpButton icon btn btn-primary"
                    type="button"
                    title="Copy">
            </button>
            <button data-localize="annPopUp.cutAnn"
                    id="vvAnnCutButton"
                    class="vvAnnPopUpButton icon btn btn-primary"
                    type="button"
                    title="Cut">
            </button>
            <button data-localize="annPopUp.deleteAnn"
                    id="vvAnnDeleteButton"
                    class="vvAnnPopUpButton icon btn btn-delete"
                    type="button"
                    title="Delete">
            </button>
        </div>
    </div>

</div>
<div class="modal fade" id="vvLayerManagerDiv" tabindex="-1" role="dialog" aria-labelledby="vvLayerManagerTitle" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="vvLayerManagerTitle" data-localize="layerManager.title">Layer Manager</h4>
            </div>
            <div class="modal-body">
                <div id="vvLayerManagerErrorBanner" class="alert alert-warning" style="display: none;"><span></span></div>
                <ul id="vvLayerManagerTabs" class="nav nav-tabs">
                    <li id="vvImageLayersTab" class="nav"><a href="#vvImageLayersTabContent" data-toggle="tab" data-localize="layerManager.imageLayersTitle">Image Layers</a></li>
                    <li id="vvAnnotationLayersTab" class="nav"><a href="#vvAnnotationLayersTabContent" data-localize="layerManager.annLayersTitle" data-toggle="tab">Annotation Layers</a></li>
                </ul>
                <div class="tab-content">
                    <div id="vvImageLayersTabContent" class="tab-pane">
                        <ul class="list-group vvAllLayerVisibilityNotSet" id="vvImageLayersList">
                            <li id="vvImageLayersListHeader" class="list-group-item list-group-item-heading">
                                <label data-localize="layerManager.imageLayersTitle">Image Layers</label>
                                <div id="vvImageLayersHeadButtons" class="btn-group btn-group-sm" role="group" aria-label="Image layer top-level buttons">
                                    <button id="vvImageLayersVisibleAll" type="button" role="button" data-toggle="button" class="vvVisible icon btn btn-primary vvLayerVisButton vvLayersVisibleAll">
                                    </button>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div id="vvAnnotationLayersTabContent" class="tab-pane">
                        <ul class="list-group vvAllLayerVisibilityNotSet" id="vvAnnotationLayersList">
                            <li id="vvAnnotationLayersListHeader" class="list-group-item list-group-item-heading">
                                <label data-localize="layerManager.annLayersTitle">Annotation Layers</label>
                                <div id="vvAnnLayersHeadButtons" class="btn-group btn-group-sm" role="group" aria-label="Annotation layer top-level buttons">
                                    <button id="vvConsolidateLayersButton" type="button" role="button" class="btn btn-primary" data-localize="layerManager.consolidateLayer.value">Consolidate</button>
                                    <button id="vvAnnLayersVisibleAll" type="button" role="button" data-toggle="button" class="vvVisible icon btn btn-primary vvLayerVisButton vvLayersVisibleAll"></button>
                                    <button id="vvAnnLayersAdd" type="button" role="button" class="btn btn-primary" data-localize="layerManager.addLayer">Add</button>
                                </div>
                            </li>
                            <li class="list-group-item vvEmptyLayerItem" data-localize="layerManager.emptyLayerDialogMessage">There are no layers to show.</li>
                            <li id="vvAddNewLayerListItem" class="list-group-item">
                                <div class="vvEditLayerNameDiv input-group input-group-sm">
                                    <input class="form-control" type="text" />
                                    <div class="btn-group btn-group-sm" role="group">
                                        <button class="btn btn-primary btn-sm okButton" role="button" type="button" data-localize="layerManager.okButton">OK</button>
                                        <button class="btn btn-primary btn-sm cancelButton" role="button" type="button" data-localize="layerManager.cancelButton">Cancel</button>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
            <div class="modal-footer">
                <div>
                    <button type="button" id="vvLayerManagerOK" class="btn btn-primary" data-localize="layerManager.okButton">OK</button>
                    <button type="button" id="vvLayerManagerCancel" class="btn btn-primary" data-localize="layerManager.cancelButton">Cancel</button>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="vvSafariSVGWorkaround"></div>

<!--Templates-->

<script type="text/x-jsrender" id="vvAnnPopUpRevisionItemTmpl">
        <div class="vvAnnotationRevision">
            <div class="vvAnnPopUpInfo">
                <label data-localize="annPopUp.annRevisions.modifyUser">{{:~localize("annPopUp.annRevisions.modifyUser", "Modified by: ")}}</label>
                <div>{{>user}}</div>
            </div>
            <div class="vvAnnPopUpInfo">
                <label data-localize="annPopUp.annRevisions.modifyDate">{{:~localize("annPopUp.annRevisions.modifyDate", "On: ")}}</label>
                <div>{{:~createAnnTimeStamp(date)}}</div>
            </div>
        </div>
    </script>

<script type="text/x-jsrender" id="vvGenericToolbarItem">
        {{props}}
        <li
            data-button-id="{{>key}}"
            {{if prop.annType}}data-annType="{{attr:prop.annType}}"{{/if}}
            {{if prop.groupId}}data-group="{{attr:prop.groupId}}"{{/if}}
            class="{{>key}} vvToolbarItem {{if prop.hasSubMenu}}dropdown vvHasSubDropdown{{/if}} {{if prop.addSeparatorAfter}}vvEndSubGroup{{/if}}">
            <a class="{{>key}} {{if prop.hasSubMenu}}dropdown-toggle{{/if}} nonselectable vvToolbarItem"
               role="button"
               data-button-id="{{>key}}"
               {{if prop.hasSubMenu}} data-toggle="dropdown"
               aria-haspopup="true"
               aria-expanded="false" {{/if}}>
                {{if key=="vvJumpToPage"}}
                <form class="navbar-form navbar-left vvJumpToPageWidget vvToolbarItem vvJumpToPage">
                    <div class="form-group form-group-sm">
                        <input type="text" class="form-control input-sm vvJumpToPageInput" name="vvJumpToPageInput" size="3">
                        <div class="vvJumpToPageLabel">
                            / <span class="vvJumpToPageTotal"></span>
                        </div>
                    </div>
                </form>
                {{/if}}
                <span data-localize="{{attr:prop.localizeKey}}"
                      data-title="{{attr:prop.name}}"
                      data-toggle="tooltip"
                      data-placement="bottom"
                      class="{{>key}}Icon icon toolbar-icon hidden-xs {{if prop.iconImage}}disable-icon{{/if}}" {{if prop.iconImage}}style="background-image: url({{url:prop.iconImage}})"{{/if}}></span>
                <span class="vvToolbarItemName">{{>prop.name}}</span>
            </a>
            {{if prop.hasSubMenu}}
            <ul class="dropdown-menu nav navbar-nav"></ul>
            {{/if}}
        </li>
        {{/props}}
    </script>

<script type="text/x-jsrender" id="vvGenericGroupItem">
        {{props}}
        <ul class="nav navbar-nav nonselectable {{>key}} {{if prop.annotationToolbar}}vvAnnotationToolbarGroup{{else}}vvImageToolbarGroup{{/if}}"></ul>

        <li data-localize="{{attr:prop.localizeKey}}"
            class="dropdown hidden-xs {{if prop.annotationToolbar}}vvMidAnnotationToolbarGroup{{else}}vvMidImageToolbarGroup{{/if}}">
            <a id="{{>key}}ButtonMid"
               class="dropdown-toggle nonselectable vvToolbarItem"
               role="button"
               data-toggle="dropdown"
               aria-haspopup="true"
               aria-expanded="false">
                <span class="{{>key}}Icon icon toolbar-icon"
                      data-title="{{attr:prop.groupTitle}}"
                      data-toggle="tooltip"
                      data-placement="{{if prop.annotationToolbar}}right{{else}}bottom{{/if}}"></span>
                <span class="caret"></span>
            </a>
            <ul id="{{>key}}Mid" class="nav navbar-nav nonselectable dropdown-menu {{>key}} vvMidSize"></ul>
        </li>
        {{/props}}
    </script>

<script type="text/x-jsrender" id="vvStampDropdownItemTemplate">
        <li data-stamp-row-index="{{if ~startIndex > 0}}{{attr:#getIndex()+~startIndex}}{{else}}{{attr:#getIndex()}}{{/if}}"
            data-button-id="{{if displayName}}vvAnnText{{else stampTitle}}vvAnnImageRubberStamp{{/if}}"
            data-annType="{{if displayName}}Rubber Stamp{{else stampTitle}}Bitmap{{/if}}">
            <a class="dropdown-item {{if displayName}}vvAnnText{{else stampTitle}}vvAnnImageRubberStamp{{/if}}">
                {{if displayName}}{{>displayName}}{{else stampTitle}}{{:stampTitle}}{{/if}}
            </a>
        </li>
    </script>

<script type="text/x-jsrender" id="documentCompareReportTemplate">
        {{for}}
            <span class="{{if #data[0]==0}}documentCompareReportNoChange
                  {{else #data[0]==1}}documentCompareReportTextAdded
                  {{else #data[0]==-1}}documentCompareReportTextRemoved{{/if}}">{{:#data[1]}}</span>
        {{/for}}
    </script>

<script type="text/x-jsrender" id="thumbnailPaneTemplate">
        {{for thumbList}}
        <div class="vvThumbBox {{if ~root.useFooter}}vvThumbBoxWithFooter{{/if}}"
                data-thumb-info={{if ~root.isDocThumb }}
		'{"documentId": "{{attr:documentId}}", "displayName": "{{attr:displayName}}", "pageNumber": 0, "subDocumentPageNumber": 0, "documentListThumb": true, "pageCount": 1 }'
                {{else ~root.isSearchThumb}}
                '{"documentId": "{{attr:documentId}}", "pageNumber": {{attr:pageNumber}}, "subDocumentPageNumber": {{attr:pageIndex}}, "searchThumb": true, "pageCount": {{attr:~root.pageCount}} }'
                {{else}}
                '{"documentId": "{{attr:documentId}}", "pageNumber": {{attr:#getIndex()}}, "subDocumentPageNumber": {{attr:pageIndex}}, "pageCount": {{attr:~root.pageCount}} }'
                {{/if}}
                {{if ~root.isDocThumb }}
                draggable="false"
                {{else}}
                draggable="true"
                {{/if}}
                title="{{if displayName}}
                        {{attr:displayName}}
                    {{else ~root.isDocThumb && documentId}}
                        {{:documentId}}
                    {{else ~root.isSearchThumb}}
                        {{:~localize("thumbPageLabel", "Page ")}}{{:pageNumber + 1}}
                    {{else}}
                        {{:~localize("thumbPageLabel", "Page ")}}{{:#getIndex() + 1}}
                    {{/if}}"
                data-toggle="tooltip">
            {{if ~root.useFooter}}
            <div class="vvThumbShadowWrapper {{if ~root.useImage}}vvThumbFooterNoImage{{/if}}">
                {{/if}}
                {{if ~root.useImage}}
                <img class="vvThumbImage vvLoadingGif" src="resources/loader.gif" />
                {{else}}
                <div class="thumbStandIn vvThumbImage displayedThumb">
                    {{if ~root.isSearchThumb}}
                    {{:~localize("thumbPageLabel", "Page ")}}{{:pageNumber + 1}}
                    {{else}}
                    {{:~localize("thumbPageLabel", "Page ")}}{{:#getIndex() + 1}}
                    {{/if}}
                </div>
                {{/if}}
                {{if ~root.useFooter}}
                <div class="vvThumbFooter {{if ~root.useImage}}vvThumbFooterNoImage{{/if}}">
                    <div>
                        {{if displayName}}
                        {{>displayName}}
                        {{else ~root.isDocThumb && documentId}}
                        {{>documentId}}
                        {{else ~root.isSearchThumb}}
                        {{:pageNumber + 1}}
                        {{else}}
                        {{:#getIndex() + 1}}
                        {{/if}}
                    </div>
                </div>
            </div>
            {{/if}}

        </div>
        {{/for}}
    </script>

<script type="text/x-jsrender" id="confirmCancelDialogTemplate">
        <div id="okCancelDialog" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                                aria-label="{{:~localize("commonDialog.closeButton", "Close")}}"
                                title="{{:~localize("commonDialog.closeButton", "Close")}}">
                            <span aria-hidden="true">×</span>
                        </button>
                        <h3 class="modal-title">{{:~localize(dialogName + ".title")}}</h3>
                    </div>
                    <div class="modal-body">
                        <div style="display: none;" class="alert alert-warning vvDialogErrorBanner"></div>
                        {{include tmpl=bodyTemplate /}}
                    </div>
                    {{if footerTemplate}}
                        {{include tmpl=footerTemplate /}}
                    {{else}}
                        <div class="modal-footer">
                            <button type="button" class="confirm-button btn btn-primary">{{:~localize(dialogName + ".confirmButton", "OK") }}</button>
                            <button type="button" class="btn btn-default cancel-button" data-dismiss="modal">{{:~localize(dialogName + ".cancelButton", ~localize("commonDialog.cancelButton", "Cancel")) }}</button>
                        </div>
                    {{/if}}
                </div>
            </div>
        </div>
    </script>

<script type="text/x-jsrender" id="confirmRefuseCancelDialogFooterTemplate">
        <div class="modal-footer">
            <button type="button" class="confirm-button btn btn-primary">{{:~localize(dialogName + ".confirmButton", "Yes") }}</button>
            <button type="button" class="refuse-button btn btn-default">{{:~localize(dialogName + ".refuseButton", "No") }}</button>
            <button type="button" class="btn btn-default cancel-button" data-dismiss="modal">{{:~localize(dialogName + ".cancelButton", ~localize("commonDialog.cancelButton", "Cancel")) }}</button>
        </div>
    </script>

<!--Specific dialog templates-->

<script type="text/x-jsrender" id="savePreferencesFooterTemplate">
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary preference-button">{{:~localize(dialogName + ".savePreferences", "Save Preferences") }}</button>
            <button type="button" class="btn btn-info preference-saved-button">{{:~localize(dialogName + ".saveConfirmed", "Saved!") }}</button>
            <button type="button" class="btn btn-primary confirm-button">{{:~localize(dialogName + ".confirmButton", "OK") }}</button>
            <button type="button" class="btn btn-default cancel-button" data-dismiss="modal">{{:~localize(dialogName + ".cancelButton", ~localize("commonDialog.cancelButton", "Cancel")) }}</button>
        </div>
    </script>
<script type="text/x-jsrender" id="permanentChangeDialogBodyTemplate">
        <p>{{:~localize("permanentChangeDialog.confirmMessageLine1") }}</p>
        <p>{{:~localize("permanentChangeDialog.confirmMessageLine2") }}</p>
    </script>

<script type="text/x-jsrender" id="ocrDialogBodyTemplate">
        <p>{{:~localize("ocrDialog.confirmMessageLine1") }}</p>
        <p>{{:~localize("ocrDialog.confirmMessageLine2") }}</p>
    </script>

<script type="text/x-jsrender" id="confirmChangesDialogBodyTemplate">
        {{if overwrite}}
            <div class="alert alert-warning" role="alert">
                <p>{{:~localize("confirmChangesDialog.overwrite")}}</p>
            </div>
        {{/if}}
        <p>{{:~localize("confirmChangesDialog.message") }}{{> documentName }}</p>
    </script>

<script type="text/x-jsrender" id="ocrDialogForVirtualDocumentSearchBodyTemplate">
        <p>{{:~localize("ocrDialogForVirtualDocumentSearch.confirmMessageLine1") }}</p>
        <p>{{:~localize("ocrDialogForVirtualDocumentSearch.confirmMessageLine2") }}</p>
    </script>

<script type="text/x-jsrender" id="saveAsDialogBodyTemplate">
        <form>
            {{include documentName tmpl="#documentNameFormTemplate" /}}
            {{include pages tmpl="#pagesFormTemplate" /}}
            {{include format tmpl="#formatFormTemplate" /}}
            {{include annotations tmpl="#annotationsFormTemplate" /}}
            {{include redactions tmpl="#redactionsFormTemplate" /}}
            {{include watermarks tmpl="#watermarksFormTemplate" /}}
        </form>
    </script>

<script type="text/x-jsrender" id="copyToNewDialogBodyTemplate">
        <form>
            <input type="hidden" name="useCut" value="{{:useCut}}" />
            {{include documentName tmpl="#documentNameFormTemplate" /}}
            {{include pages tmpl="#pagesFormTemplate" /}}
            {{include format tmpl="#formatFormTemplate" /}}
            {{include annotations tmpl="#annotationsFormTemplate" /}}
            {{include redactions tmpl="#redactionsFormTemplate" /}}
            {{include watermarks tmpl="#watermarksFormTemplate" /}}
        </form>
    </script>

<script type="text/x-jsrender" id="exportDialogBodyTemplate">
        <form>
            {{include pages tmpl="#pagesFormTemplate" /}}
            {{include format tmpl="#formatFormTemplate" /}}
            {{include annotations tmpl="#annotationsFormTemplate" /}}
            {{include redactions tmpl="#redactionsFormTemplate" /}}
            {{include documentNotes tmpl="#documentNotesFormTemplate" /}}
            {{include watermarks tmpl="#watermarksFormTemplate" /}}
        </form>
    </script>

<script type="text/x-jsrender" id="emailDialogBodyTemplate">
        <form>
            <div class="form-group">
                {{:~localize("emailDialog.sendFieldCaption", "Send")}}&nbsp;
                {{> displayName}}
            </div>
            <div class="form-group">
                <label class="control-label email-field">
                    {{:~localize("emailDialog.fromFieldCaption", "From")}}:
                    <!--In this order the hidden's value will be used if textbox is disabled; if enabled the textbox will take precedence.-->
                    <input name="fromAddress" type="hidden" value="{{> prepopulateFrom }}" />
                    <input name="fromAddress" type="email" class="form-control vvEmailAddressEntry" value="{{> prepopulateFrom}}" disabled>
                </label>
            </div>
            <div class="form-group">
                <label for="vvEmailTo" class="control-label email-field">
                    {{:~localize("emailDialog.toFieldCaption", "To")}}:
                    <input name="toAddresses" type="email" class="form-control vvEmailAddressEntry" value="{{> prepopulateTo}}">
                </label>
            </div>
            <div class="form-group">
                <label for="vvEmailSubject" class="control-label email-field">
                    {{:~localize("emailDialog.subjectFieldCaption", "Subject")}}:
                    <input name="subject" type="text" class="form-control" value="{{:~localize("emailDialog.subjectFieldDefaultContents")}}">
                </label>
            </div>
            <div class="form-group">
                <textarea name="message" class="form-control" rows="5" cols="57">{{:~localize("emailDialog.bodyFieldDefaultContents")}}</textarea>
            </div>
            {{include format tmpl="#formatFormTemplate" /}}
            {{include annotations tmpl="#annotationsFormTemplate" /}}
            {{include redactions tmpl="#redactionsFormTemplate" /}}
            {{include documentNotes tmpl="#documentNotesFormTemplate" /}}
            {{include watermarks tmpl="#watermarksFormTemplate" /}}
        </form>
    </script>

<script type="text/x-jsrender" id="printDialogBodyTemplate">
        <form>
            {{include pages tmpl="#pagesFormTemplate" /}}
            {{include pages tmpl="#annotationsFormTemplate" /}}
            {{include redactions tmpl="#redactionsFormTemplate" /}}
            {{include documentNotes tmpl="#documentNotesFormTemplate" /}}
            {{include watermarks tmpl="#watermarksFormTemplate" /}}
        </form>
    </script>

<script type="text/x-jsrender" id="watermarksDialogBodyTemplate">
        <form>
            {{if existingWatermarks.length > 0}}
            <div class="form-group edit-existing-container">
                <h4>{{:~localize("watermarksDialog.existingWatermarks.heading", "Edit Existing Watermarks")}}</h4>
                <select name="selectedWatermark" class="form-control selected-watermark">
                    <option value="createNew">{{:~localize("watermarksDialog.existingWatermarks.createNewOption", "Create New")}}</option>
                    {{for existingWatermarks}}
                    <option value="{{:#index}}">{{>~placeholderizeWatermarkText(text)}}</option>
                    {{/for}}
                </select>
                <button type="button" class="btn btn-danger delete-button" style="display:none">{{:~localize("watermarksDialog.existingWatermarks.deleteButton", "Delete")}}</button>
            </div>
            {{/if}}
            <div class="form-group watermarks-text-container">
                <h4>{{:~localize("watermarksDialog.editText.heading", "Edit Text")}}</h4>
                <span class="watermark-text-control-label">{{:~localize("watermarksDialog.editText.textControlLabel", "Insert:")}}</span>
                <div class="btn-group watermark-text-control-panel">
                    <button class="btn btn-primary btn-sm" data-vvwatermark="username" onclick="return false;">
                        {{:~localize("watermarksDialog.editText.username", "Username")}}
                    </button>
                    <button class="btn btn-primary btn-sm" data-vvwatermark="printTime" onclick="return false;">
                        {{:~localize("watermarksDialog.editText.printTime", "Date/Time Printed")}}
                    </button>
                    <button class="btn btn-primary btn-sm" data-vvwatermark="pageNumber" onclick="return false;">
                        {{:~localize("watermarksDialog.editText.pageNumber", "Page Number")}}
                    </button>
                    <button class="btn btn-primary btn-sm" data-vvwatermark="totalPages" onclick="return false;">
                        {{:~localize("watermarksDialog.editText.totalPages", "Total Pages")}}
                    </button>
                    <button class="btn btn-primary btn-sm" data-vvwatermark="documentName" onclick="return false;">
                        {{:~localize("watermarksDialog.editText.documentName", "Document Name")}}
                    </button>
                </div>
                <textarea class="form-control watermarks-text-area"></textarea>
            </div>
            <div class="form-group">
                <h4>
                    {{:~localize("watermarksDialog.appearance.heading", "Appearance")}}
                </h4>
                <div class="row watermark-position-toolbar">
                    <input type="hidden" name="verticalPosition" value="{{:position.verticalPosition}}" />
                    <input type="hidden" name="textDirection" value="{{:position.textDirection}}" />
                    <div class="col-md-12">
                        <button class="horizontal-center watermark-position-button btn btn-secondary" aria-pressed="true" data-vvmovement="horizontalCenter">
                            <span>{{:~localize("watermarksDialog.appearance.watermarkShortPlaceholder")}}</span>
                        </button>
                        <button class="horizontal-top watermark-position-button btn btn-secondary" data-vvmovement="horizontalTop">
                            <span>{{:~localize("watermarksDialog.appearance.watermarkShortPlaceholder")}}</span>
                        </button>
                        <button class="horizontal-bottom watermark-position-button btn btn-secondary" data-vvmovement="horizontalBottom">
                            <span>{{:~localize("watermarksDialog.appearance.watermarkShortPlaceholder")}}</span>
                        </button>
                        <button class="diagonal-bottom watermark-position-button btn btn-secondary" data-vvmovement="diagonalBottom">
                            <span>{{:~localize("watermarksDialog.appearance.watermarkShortPlaceholder")}}</span>
                        </button>
                        <button class="diagonal-top watermark-position-button btn btn-secondary" data-vvmovement="diagonalTop">
                            <span>{{:~localize("watermarksDialog.appearance.watermarkShortPlaceholder")}}</span>
                        </button>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="watermark-image-container">
                            <div class="watermark-image transparent {{:position.imageClass}}">
                                {{:~localize("watermarksDialog.appearance.watermarkPlaceholder", "Watermark")}}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="radio">
                            <label>
                                <input type="radio" name="transparency" value="true" checked />
                                {{:~localize("watermarksDialog.appearance.transparent", "Transparent")}}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="transparency" value="false" />
                                {{:~localize("watermarksDialog.appearance.opaque", "Opaque")}}
                            </label>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <label class="control-label">
                            {{:~localize("watermarksDialog.appearance.stretchFont", "Stretch to Fit")}}
                            <select name="stretchPercent" class="form-control">
                                <option value="1" selected>100%</option>
                                <option value="0.5">50%</option>
                                <option value="0.33">33%</option>
                            </select>
                        </label>
                    </div>
                    <div style="clear:both; height:1px; margin-bottom:20px"></div>
                </div>
            </div>
            {{include pages tmpl="#pagesFormTemplate" /}}
        </form>
    </script>

<!--Subtemplates-->

<script type="text/x-jsrender" id="documentNameFormTemplate">
        <div class="form-group form-horizontal">
            <h4>{{:~localize("documentNameFields.heading", "Document Name")}}</h4>
            <label>
                <span>{{:~localize("documentNameFields.documentName", "Document Name")}}</span>
                <input name="documentName" class="form" type="text" value="{{:documentName}}" />
            </label>
        </div>
    </script>

<script type="text/x-jsrender" id="pagesFormTemplate">
        <div class="form-group">
            <h4>{{:~localize("pageRangeFields.heading", "Pages")}}</h4>
            <div class="radio {{:allPagesDisabled ? 'vvDialogDisabledText' : ''}}">
                <label>
                    <input type="radio" name="pageRangeType" value="all" {{:allPagesDisabled ? 'disabled' : 'checked'}}>
                    {{:~localize("pageRangeFields.allPages", "All Pages")}}
                </label>
            </div>
            {{if includePageRangeOption !== false}}
            <div class="radio">
                <label>
                    <input type="radio" name="pageRangeType" value="complex" {{:allPagesDisabled || pageRangeValue ? 'checked' : ''}}>
                    {{:~localize("pageRangeFields.pages", "Pages")}}
                </label>
                <input class="complexRange" type="text" name="pageRangeValue" value="{{:pageRangeValue}}" />
            </div>
            {{/if}}
            <div class="radio">
                <label><input type="radio" name="pageRangeType" value="current">{{:~localize("pageRangeFields.currentPage", "Current Page")}}</label>
            </div>
        </div>
    </script>

<script type="text/x-jsrender" id="formatFormTemplate">
        <div class="form-group">
            <h4>{{:~localize("commonDialog.heading", "Format")}}</h4>
            <label class="radio-inline">
                <input type="radio"
                       name="format"
                       value="PDF"
                       checked="" />
                <span>{{:~localize("commonDialog.pdf", "PDF")}}</span>
            </label>
            <label class="radio-inline">
                <input type="radio"
                       name="format"
                       value="TIFF" />
                <span>{{:~localize("commonDialog.tiff", "TIFF")}}</span>
            </label>
            {{if includeOriginalOption}}
            <label class="radio-inline vvDialogDisabledText">
                <input type="radio"
                       name="format"
                       value="Original"
                       disabled />
                <span>{{:~localize("commonDialog.original", "Original")}}</span>
            </label>
            {{/if}}
        </div>
    </script>

<script type="text/x-jsrender" id="annotationsFormTemplate">
        <div class="form-group">
            <h4>{{:~localize("commonDialog.heading", "Annotations")}}</h4>
            <div class="checkbox">
                <label><input type="checkbox" name="includeAnnotations" value="true" checked />{{:~localize("commonDialog.includeAnnotations", "Include Annotations")}}</label>
            </div>
        </div>
    </script>

<script type="text/x-jsrender" id="redactionsFormTemplate">
        <div class="form-group">
            <h4>{{:~localize("commonDialog.heading", "Redactions")}}</h4>
            <div class="checkbox">
                <label><input type="checkbox" name="includeRedactions" value="true" checked />{{:~localize("commonDialog.includeRedactions", "Burn Redactions (Permanent)")}}</label>
            </div>
            <div class="checkbox">
                <label><input type="checkbox" name="includeRedactionTags" value="true" checked />{{:~localize("commonDialog.includeRedactionTags", "Include Redaction Tags")}}</label>
            </div>
        </div>
    </script>

<script type="text/x-jsrender" id="documentNotesFormTemplate">
        <div class="form-group">
            <h4>{{:~localize("documentNotesFields.heading", "Document Notes")}}</h4>
            <div class="checkbox">
                <label>
                    <input name="includeDocumentNotes" type="checkbox" value="true" />
                    {{:~localize("documentNotesFields.includeDocumentNotes", " Include Document Notes")}}
                </label>
            </div>
        </div>
    </script>

<script type="text/x-jsrender" id="watermarksFormTemplate">
        <div class="form-group">
            <h4>{{:~localize("watermarksFields.heading", "Watermarks")}}</h4>
            <div class="checkbox">
                <label>
                    <input name="includeWatermarks" type="checkbox" value="true" checked />
                    {{:~localize("watermarksFields.includeWatermarks", "Include Watermarks")}}
                </label>
            </div>
        </div>
    </script>

<script type="text/x-jsrender" id="singleLayerItemTemplate">
        <li class="list-group-item vvLayerListItem {{if layerHidden}}vvLayerInvisible{{else}}vvLayerVisible{{/if}}">
            {{if color}}
            <div class="vvLayerColorIndicator" style="background-color: {{:color}};"></div>
            {{/if}}
            <span class="vvLayerText">
                <span class="vvLayerNameText">{{> layerName}}</span>
                {{if canEdit}}
                <span class="vvAnnEditLayerTextIcon icon"></span>
                {{/if}}
            </span>
            {{if canEdit}}
            <div class="vvEditLayerNameDiv input-group input-group-sm">
                <input class="form-control" type="text" />
                <div class="btn-group btn-group-sm" role="group">
                    <button class="btn btn-primary btn-sm okButton" role="button" type="button">{{:~localize("layerManager.okButton", "OK")}}</button>
                    <button class="btn btn-primary btn-sm cancelButton" role="button" type="button">{{:~localize("layerManager.cancelButton", "Cancel")}}</button>
                </div>
            </div>
            {{/if}}
            {{if canDelete}}
            <div class="vvDeleteLayerConfirmation">
                <span>{{:~localize("deleteLayerDialog.value", "Are you sure you wish to delete this layer?")}}</span>
                <div class="btn-group btn-group-sm" role="group">
                    <button class="btn btn-primary btn-sm okButton" role="button" type="button">{{:~localize("confirmChangesDialog.yesButton", "Yes")}}</button>
                    <button class="btn btn-primary btn-sm cancelButton" role="button" type="button">{{:~localize("confirmChangesDialog.noButton", "No")}}</button>
                </div>
            </div>
            {{/if}}
            <div class="btn-group btn-group-sm vvLayerBtnGroup">
            {{if canHide}}
                <button class="vvVisible icon btn btn-primary vvLayerVisButton" role="button" type="button" data-toggle="button">
                </button>
            {{/if}}
            {{if canDelete}}
                <button class="btn btn-delete vvAnnDeleteLayerButton icon " role="button" type="button">
                </button>
            {{/if}}
            </div>
        </li>
    </script>

<!--Misc templates-->

<script type="text/x-jsrender" id="annotationListItemTemplate">
        <div data-ordinal="{{> ordinal}}" data-type="{{> type}}" data-pagenumber="{{> page}}" data-layername="{{> layerName}}" class="vvAnnotationItem">
            <div class="vvAnnotationListItemTitleBlock">
                <h5 class="vvAnnotationListItemTitle">{{:getLocalizedTypeName()}}</h5>
                <div class="vvAnnotationlistItemPage">
                <label>{{:~localize("annotationInfoList.labels.page", "Page: ")}}</label>
                    <div class="vvAnnotationInfoPage vvAnnInfoEntry">{{: page + 1}}</div></div>
            </div>
            <div class="vvAnnotationListItemInfo">
                <div class="vvAnnotationListInfoText">{{:getTextString()}}</div>
                <div class="vvAnnotationListInfoCreated">
                    <div class="vvAnnotationListInfoUser">
                        <label>{{:~localize("annotationInfoList.labels.userCreatedBy", "Created by: ")}}</label>
                        <div class="vvAnnInfoEntry">{{> createUser}}</div>
                    </div>
                    <div class="vvAnnotationListInfoDate">
                        <label>{{:~localize("annotationInfoList.labels.dateCreated", "On: ")}}</label>
                        <div class="vvAnnInfoEntry">{{:getCreateDateFormatted()}}</div>
                    </div>
                </div>
                <div class="vvAnnotationListInfoModified">
                    <div class="vvAnnotationListInfoUser">
                        <label>{{:~localize("annotationInfoList.labels.userModifiedBy", "Last changed by: ")}}</label>
                        <div class="vvAnnInfoEntry">{{:getMostRecentModifyUser()}}</div>
                    </div>
                    <div class="vvAnnotationListInfoDate">
                        <label>{{:~localize("annotationInfoList.labels.dateModified", "On: ")}}</label>
                        <div class="vvAnnInfoEntry">{{:getMostRecentModifyDateFormatted()}}</div>
                    </div>
                </div>
            </div>
        </div>
    </script>

<script type="text/x-jsrender" id="vvAnnotationListUserOptionTemplate">
        {{props}}
        <li class="vvAnnotationListUserOption">
            <a href="#">{{>key}}</a>
        </li>
        {{/props}}
    </script>

<script type="text/x-jsrender" id="autoFormTemplate">
        <form method="post" action="{{:action}}" target="vvDownloadFrame">
            {{props data}}
            <input type="hidden" name='{{:key}}' value='{{:~escapeSingleQuotes(prop)}}' />
            {{/props}}
        </form>
    </script>
</body>
</html>



