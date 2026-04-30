.class Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ShareFolderArgBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Serializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 362
    .line 363
    if-nez p2, :cond_a

    .line 364
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 365
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 367
    :goto_0
    if-nez v0, :cond_9

    .line 370
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v5, v6

    move-object v4, v6

    move-object v2, v6

    move-object v1, v6

    .line 374
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v7, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v7, :cond_6

    .line 375
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 377
    const-string/jumbo v7, "path"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 378
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    move-object v0, v3

    :goto_2
    move-object v3, v0

    .line 398
    goto :goto_1

    .line 380
    :cond_0
    const-string/jumbo v7, "acl_update_policy"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 381
    sget-object v0, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    move-object v2, v0

    move-object v0, v3

    goto :goto_2

    .line 383
    :cond_1
    const-string/jumbo v7, "force_async"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 384
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_2

    .line 386
    :cond_2
    const-string/jumbo v7, "member_policy"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 387
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberPolicy;

    move-object v4, v0

    move-object v0, v3

    goto :goto_2

    .line 389
    :cond_3
    const-string/jumbo v7, "shared_link_policy"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 390
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    move-object v5, v0

    move-object v0, v3

    goto :goto_2

    .line 392
    :cond_4
    const-string/jumbo v7, "viewer_info_policy"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 393
    sget-object v0, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    move-object v6, v0

    move-object v0, v3

    goto :goto_2

    .line 396
    :cond_5
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v3

    goto :goto_2

    .line 399
    :cond_6
    if-nez v1, :cond_7

    .line 400
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"path\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_7
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;ZLcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)V

    .line 407
    if-nez p2, :cond_8

    .line 408
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 410
    :cond_8
    return-object v0

    .line 405
    :cond_9
    new-instance v1, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No subtype found that matches tag: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    :cond_a
    move-object v0, v6

    goto/16 :goto_0
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 331
    if-nez p3, :cond_0

    .line 332
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 334
    :cond_0
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 336
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eqz v0, :cond_1

    .line 337
    const-string/jumbo v0, "acl_update_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 338
    sget-object v0, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 340
    :cond_1
    const-string/jumbo v0, "force_async"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->forceAsync:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 342
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eqz v0, :cond_2

    .line 343
    const-string/jumbo v0, "member_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 344
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 346
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    if-eqz v0, :cond_3

    .line 347
    const-string/jumbo v0, "shared_link_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 348
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 350
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eqz v0, :cond_4

    .line 351
    const-string/jumbo v0, "viewer_info_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 352
    sget-object v0, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 354
    :cond_4
    if-nez p3, :cond_5

    .line 355
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 357
    :cond_5
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 326
    check-cast p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;Lcom/d/a/a/g;Z)V

    return-void
.end method
