.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;
.super Ljava/lang/Object;
.source "AdobeAssetProductFolder.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageCollectionRequestCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

.field final synthetic val$nextPageDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;

.field final synthetic val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->val$nextPageDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 355
    if-eqz p1, :cond_4

    .line 357
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->access$002(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    .line 358
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->access$102(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;Z)Z

    .line 360
    const-string/jumbo v0, "assets/([-_\\w]+)/"

    .line 362
    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 365
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 366
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 367
    if-eqz v0, :cond_3

    .line 368
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    .line 372
    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    if-eqz v1, :cond_0

    .line 373
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    .line 376
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 377
    const-string/jumbo v1, ""

    .line 378
    :goto_1
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 379
    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 381
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 383
    const/4 v1, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 435
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPackageInternal;

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-static {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->access$900(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPackageInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 436
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPackageInternal;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 437
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 383
    :sswitch_0
    const-string/jumbo v8, "adobedraw"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v8, "adobedrawandroid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v2

    goto :goto_2

    :sswitch_2
    const-string/jumbo v8, "adobe-libraries"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v3

    goto :goto_2

    :sswitch_3
    const-string/jumbo v8, "adobesketch"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_4
    const-string/jumbo v8, "adobesketch-android"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_5
    const-string/jumbo v8, "adobe-psmix"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_6
    const-string/jumbo v8, "adobeclsmix"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_7
    const-string/jumbo v8, "adobe-psfix"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v1, 0x7

    goto :goto_2

    :sswitch_8
    const-string/jumbo v8, "adobefixandroid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :sswitch_9
    const-string/jumbo v8, "adobe-psfix-cls"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v1, 0x9

    goto/16 :goto_2

    :sswitch_a
    const-string/jumbo v8, "adobe-layup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v1, 0xa

    goto/16 :goto_2

    :sswitch_b
    const-string/jumbo v8, "adobecompandroid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v1, 0xb

    goto/16 :goto_2

    :sswitch_c
    const-string/jumbo v8, "adobecls"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v1, 0xc

    goto/16 :goto_2

    :sswitch_d
    const-string/jumbo v8, "adobeclsprojects"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v1, 0xd

    goto/16 :goto_2

    :sswitch_e
    const-string/jumbo v8, "adobeclsdemo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v1, 0xe

    goto/16 :goto_2

    .line 386
    :pswitch_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetDrawFileInternal;

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-static {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->access$200(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetDrawFileInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 387
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetDrawFileInternal;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 388
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 392
    :pswitch_1
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-static {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->access$300(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 393
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 394
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 399
    :pswitch_2
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetSketchbookInternal;

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-static {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->access$400(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetSketchbookInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 400
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetSketchbookInternal;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 401
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 406
    :pswitch_3
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixFileInternal;

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-static {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->access$500(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixFileInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 407
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixFileInternal;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 408
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 414
    :pswitch_4
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixFileInternal;

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-static {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->access$600(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixFileInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 415
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixFileInternal;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 416
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 421
    :pswitch_5
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompFileInternal;

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-static {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->access$700(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompFileInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 422
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompFileInternal;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 423
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 429
    :pswitch_6
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetSharedProjectInternal;

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-static {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->access$800(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetSharedProjectInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 430
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetSharedProjectInternal;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 431
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 449
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->val$nextPageDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getNumChildren()I

    move-result v1

    invoke-interface {v0, v5, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;->onCompletion(Ljava/util/ArrayList;I)V

    .line 453
    :cond_4
    return-void

    .line 383
    :sswitch_data_0
    .sparse-switch
        -0x7cd3bfc5 -> :sswitch_2
        -0x71a299a5 -> :sswitch_3
        -0x57944a4f -> :sswitch_9
        -0x4703fccf -> :sswitch_b
        -0x36c08325 -> :sswitch_c
        -0x24f875ab -> :sswitch_d
        -0x16d80b03 -> :sswitch_4
        -0xea16ac2 -> :sswitch_e
        0x55b83e9 -> :sswitch_8
        0xeb00f5c -> :sswitch_1
        0x16f685e1 -> :sswitch_a
        0x1736c9d4 -> :sswitch_7
        0x1736e41b -> :sswitch_5
        0x5eb0a7b3 -> :sswitch_0
        0x732437a1 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 1

    .prologue
    .line 458
    if-eqz p1, :cond_0

    .line 459
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->val$nextPageDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;->onError(Ljava/lang/Object;)V

    .line 461
    :cond_0
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 350
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method
