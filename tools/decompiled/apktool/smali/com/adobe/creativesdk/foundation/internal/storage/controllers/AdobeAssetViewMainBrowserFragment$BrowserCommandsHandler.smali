.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewCommandsHandler;
.source "AdobeAssetViewMainBrowserFragment.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewCommandsHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$1;)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;)V

    return-void
.end method


# virtual methods
.method protected getCommandsListToRegister()Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->NAVIGATE_TO_COLLECTION:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    const/16 v1, 0x14

    new-array v1, v1, [Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    const/4 v2, 0x0

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->NAVIGATE_TO_COLLECTION_DOC_PROVIDER:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->NAVIGATE_TO_DESIGNLIBRARY_COLLECTION:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->NAVIGATE_TO_MOBILECREATION_COLLECTION:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->NAVIGATE_BACK:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_MENU_SHOW_MY_ACCOUNT:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_OPEN_SELECTED_FILES:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_OPEN_SELECTED_PHOTOS:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->NAVIGATE_TO_PHOTO_COLLECTION:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ASSET_BROWSER_USER_SIGNOUT:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_MENU_CREATE_NEWFOLDER:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_NEWFOLDER_CREATED:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_LIBRARY_CREATED:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_MENU_CREATE_NEWLIBRARY:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_MENU_CREATE_NEW_PHOTOCOLLECTION:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_PHOTOCOLLECTION_CREATED:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_UPLOAD_SHOW_ERROR_DETAILS:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_EDIT_SHOW_ERROR_DETAILS:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_SHOW_CC_DATASOURCE_MYASSETS:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_SHOW_CC_DATASOURCE_MYLIBRARIES:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSET_VIEW_COLLABORATOR_SELF_DELETE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method protected handleCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 416
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$storage$controllers$commands$AdobeAssetViewBrowserCommandName:[I

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 493
    :goto_0
    :pswitch_0
    return-void

    .line 418
    :pswitch_1
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToCollectionCommand;

    .line 419
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToCollectionCommand;->getDataSourceType()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    move-result-object v1

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToCollectionCommand;->getCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v2

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToCollectionCommand;->isReadOnly()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->navigateToCollection(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Z)V

    goto :goto_0

    .line 423
    :pswitch_2
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToCollectionCommand;

    .line 424
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToCollectionCommand;->getDataSourceType()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    move-result-object v1

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToCollectionCommand;->getCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v2

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToCollectionCommand;->isReadOnly()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->navigateToCollectionInDocProvider(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Z)V

    goto :goto_0

    .line 428
    :pswitch_3
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;

    .line 429
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-static {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;)V

    goto :goto_0

    .line 433
    :pswitch_4
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;

    .line 434
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-static {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;)V

    goto :goto_0

    .line 441
    :pswitch_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;)V

    goto :goto_0

    .line 444
    :pswitch_6
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;)V

    goto :goto_0

    .line 447
    :pswitch_7
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;)V

    goto :goto_0

    .line 450
    :pswitch_8
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;

    .line 451
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePhotos:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {v0, v1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->navigateToPhotoCollection(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;)V

    goto :goto_0

    .line 455
    :pswitch_9
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;)V

    goto :goto_0

    .line 458
    :pswitch_a
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-static {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;Ljava/lang/Object;)V

    goto :goto_0

    .line 461
    :pswitch_b
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-static {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;Ljava/lang/Object;)V

    goto :goto_0

    .line 464
    :pswitch_c
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    check-cast p2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->access$900(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V

    goto :goto_0

    .line 467
    :pswitch_d
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    check-cast p2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->access$1000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V

    goto :goto_0

    .line 470
    :pswitch_e
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->access$1100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;)V

    goto :goto_0

    .line 473
    :pswitch_f
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->access$1200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 476
    :pswitch_10
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->access$1300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;)V

    goto/16 :goto_0

    .line 479
    :pswitch_11
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    check-cast p2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-static {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->access$1400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V

    goto/16 :goto_0

    .line 482
    :pswitch_12
    const-string/jumbo v0, "MainBrowserFragment"

    const-string/jumbo v1, "B-Action ACTION_SHOW_CC_DATASOURCE_MYASSETS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->access$1500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;)V

    goto/16 :goto_0

    .line 486
    :pswitch_13
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->access$1600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;)V

    goto/16 :goto_0

    .line 489
    :pswitch_14
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment$BrowserCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->access$1700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;)V

    goto/16 :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
