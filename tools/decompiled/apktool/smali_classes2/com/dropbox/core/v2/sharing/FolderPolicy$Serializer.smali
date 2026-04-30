.class Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "FolderPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/FolderPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 291
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/FolderPolicy;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 322
    .line 323
    if-nez p2, :cond_a

    .line 324
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 325
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 327
    :goto_0
    if-nez v0, :cond_9

    move-object v4, v5

    move-object v3, v5

    move-object v2, v5

    move-object v1, v5

    .line 333
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v6, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v6, :cond_5

    .line 334
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 336
    const-string/jumbo v6, "acl_update_policy"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 337
    sget-object v0, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    move-result-object v1

    goto :goto_1

    .line 339
    :cond_0
    const-string/jumbo v6, "shared_link_policy"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 340
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    move-result-object v2

    goto :goto_1

    .line 342
    :cond_1
    const-string/jumbo v6, "member_policy"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 343
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberPolicy;

    move-object v3, v0

    goto :goto_1

    .line 345
    :cond_2
    const-string/jumbo v6, "resolved_member_policy"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 346
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberPolicy;

    move-object v4, v0

    goto :goto_1

    .line 348
    :cond_3
    const-string/jumbo v6, "viewer_info_policy"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 349
    sget-object v0, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    move-object v5, v0

    goto :goto_1

    .line 352
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->skipValue(Lcom/d/a/a/k;)V

    goto :goto_1

    .line 355
    :cond_5
    if-nez v1, :cond_6

    .line 356
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"acl_update_policy\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_6
    if-nez v2, :cond_7

    .line 359
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"shared_link_policy\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_7
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderPolicy;

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/FolderPolicy;-><init>(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)V

    .line 366
    if-nez p2, :cond_8

    .line 367
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 369
    :cond_8
    return-object v0

    .line 364
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
    move-object v0, v5

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
    .line 290
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/FolderPolicy;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/FolderPolicy;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 295
    if-nez p3, :cond_0

    .line 296
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 298
    :cond_0
    const-string/jumbo v0, "acl_update_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 299
    sget-object v0, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/d/a/a/g;)V

    .line 300
    const-string/jumbo v0, "shared_link_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 301
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/d/a/a/g;)V

    .line 302
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eqz v0, :cond_1

    .line 303
    const-string/jumbo v0, "member_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 306
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eqz v0, :cond_2

    .line 307
    const-string/jumbo v0, "resolved_member_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 308
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->resolvedMemberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 310
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eqz v0, :cond_3

    .line 311
    const-string/jumbo v0, "viewer_info_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 312
    sget-object v0, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 314
    :cond_3
    if-nez p3, :cond_4

    .line 315
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 317
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
    .line 290
    check-cast p1, Lcom/dropbox/core/v2/sharing/FolderPolicy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/FolderPolicy;Lcom/d/a/a/g;Z)V

    return-void
.end method
