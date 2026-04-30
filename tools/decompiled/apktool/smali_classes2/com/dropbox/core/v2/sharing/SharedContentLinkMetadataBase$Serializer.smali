.class Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SharedContentLinkMetadataBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 358
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 393
    .line 394
    if-nez p2, :cond_e

    .line 395
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 396
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 398
    :goto_0
    if-nez v0, :cond_d

    move-object v6, v7

    move-object v5, v7

    move-object v4, v7

    move-object v3, v7

    move-object v2, v7

    move-object v1, v7

    .line 406
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v8, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v8, :cond_7

    .line 407
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 409
    const-string/jumbo v8, "audience_options"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 410
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    move-object v0, v4

    :goto_2
    move-object v4, v0

    .line 433
    goto :goto_1

    .line 412
    :cond_0
    const-string/jumbo v8, "current_audience"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 413
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/LinkAudience;

    move-result-object v2

    move-object v0, v4

    goto :goto_2

    .line 415
    :cond_1
    const-string/jumbo v8, "link_permissions"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 416
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    move-object v0, v4

    goto :goto_2

    .line 418
    :cond_2
    const-string/jumbo v8, "password_protected"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 419
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_2

    .line 421
    :cond_3
    const-string/jumbo v8, "access_level"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 422
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/AccessLevel;

    move-object v5, v0

    move-object v0, v4

    goto :goto_2

    .line 424
    :cond_4
    const-string/jumbo v8, "audience_restricting_shared_folder"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 425
    sget-object v0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    move-object v6, v0

    move-object v0, v4

    goto :goto_2

    .line 427
    :cond_5
    const-string/jumbo v8, "expiry"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 428
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    move-object v7, v0

    move-object v0, v4

    goto/16 :goto_2

    .line 431
    :cond_6
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v4

    goto/16 :goto_2

    .line 434
    :cond_7
    if-nez v1, :cond_8

    .line 435
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"audience_options\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_8
    if-nez v2, :cond_9

    .line 438
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"current_audience\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_9
    if-nez v3, :cond_a

    .line 441
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"link_permissions\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_a
    if-nez v4, :cond_b

    .line 444
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"password_protected\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_b
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;Ljava/util/Date;)V

    .line 451
    if-nez p2, :cond_c

    .line 452
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 454
    :cond_c
    return-object v0

    .line 449
    :cond_d
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

    :cond_e
    move-object v0, v7

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
    .line 357
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 362
    if-nez p3, :cond_0

    .line 363
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 365
    :cond_0
    const-string/jumbo v0, "audience_options"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 366
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceOptions:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 367
    const-string/jumbo v0, "current_audience"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 368
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/LinkAudience;Lcom/d/a/a/g;)V

    .line 369
    const-string/jumbo v0, "link_permissions"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 370
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->linkPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 371
    const-string/jumbo v0, "password_protected"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->passwordProtected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 373
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eqz v0, :cond_1

    .line 374
    const-string/jumbo v0, "access_level"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 375
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 377
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    if-eqz v0, :cond_2

    .line 378
    const-string/jumbo v0, "audience_restricting_shared_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 379
    sget-object v0, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 381
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->expiry:Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 382
    const-string/jumbo v0, "expiry"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->expiry:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 385
    :cond_3
    if-nez p3, :cond_4

    .line 386
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 388
    :cond_4
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
    .line 357
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;Lcom/d/a/a/g;Z)V

    return-void
.end method
