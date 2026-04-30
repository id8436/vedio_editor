.class Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "RemoveFileMemberError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 382
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 421
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 423
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 431
    :goto_0
    if-nez v0, :cond_1

    .line 432
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    const/4 v1, 0x0

    .line 428
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 429
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 434
    :cond_1
    const-string/jumbo v3, "user_error"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 436
    const-string/jumbo v0, "user_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 437
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharingUserError;

    move-result-object v0

    .line 438
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    move-result-object v0

    .line 454
    :goto_1
    if-nez v1, :cond_2

    .line 455
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 456
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 458
    :cond_2
    return-object v0

    .line 440
    :cond_3
    const-string/jumbo v3, "access_error"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 442
    const-string/jumbo v0, "access_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 443
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v0

    .line 444
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    move-result-object v0

    goto :goto_1

    .line 446
    :cond_4
    const-string/jumbo v3, "no_explicit_access"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 448
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v0

    .line 449
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->noExplicitAccess(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    move-result-object v0

    goto :goto_1

    .line 452
    :cond_5
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    goto :goto_1
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 386
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$1;->$SwitchMap$com$dropbox$core$v2$sharing$RemoveFileMemberError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->tag()Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 411
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 414
    :goto_0
    return-void

    .line 388
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 389
    const-string/jumbo v0, "user_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 390
    const-string/jumbo v0, "user_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 391
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->access$000(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;)Lcom/dropbox/core/v2/sharing/SharingUserError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/d/a/a/g;)V

    .line 392
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 396
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 397
    const-string/jumbo v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 398
    const-string/jumbo v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 399
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->access$100(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/d/a/a/g;)V

    .line 400
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 404
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 405
    const-string/jumbo v0, "no_explicit_access"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 406
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->access$200(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;Lcom/d/a/a/g;Z)V

    .line 407
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 381
    check-cast p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;Lcom/d/a/a/g;)V

    return-void
.end method
