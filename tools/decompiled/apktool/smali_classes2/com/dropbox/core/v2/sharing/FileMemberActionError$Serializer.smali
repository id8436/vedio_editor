.class Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "FileMemberActionError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/FileMemberActionError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 392
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 394
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 402
    :goto_0
    if-nez v0, :cond_1

    .line 403
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_0
    const/4 v1, 0x0

    .line 399
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 400
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 405
    :cond_1
    const-string/jumbo v3, "invalid_member"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 406
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->INVALID_MEMBER:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    .line 425
    :goto_1
    if-nez v1, :cond_2

    .line 426
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 427
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 429
    :cond_2
    return-object v0

    .line 408
    :cond_3
    const-string/jumbo v3, "no_permission"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 409
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    goto :goto_1

    .line 411
    :cond_4
    const-string/jumbo v3, "access_error"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 413
    const-string/jumbo v0, "access_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 414
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v0

    .line 415
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object v0

    goto :goto_1

    .line 417
    :cond_5
    const-string/jumbo v3, "no_explicit_access"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 419
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v0

    .line 420
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->noExplicitAccess(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object v0

    goto :goto_1

    .line 423
    :cond_6
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->OTHER:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

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
    .line 352
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/FileMemberActionError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 357
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError$1;->$SwitchMap$com$dropbox$core$v2$sharing$FileMemberActionError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->tag()Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 382
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 385
    :goto_0
    return-void

    .line 359
    :pswitch_0
    const-string/jumbo v0, "invalid_member"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :pswitch_1
    const-string/jumbo v0, "no_permission"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 368
    const-string/jumbo v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 369
    const-string/jumbo v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 370
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->access$000(Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/d/a/a/g;)V

    .line 371
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 375
    :pswitch_3
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 376
    const-string/jumbo v0, "no_explicit_access"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 377
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->access$100(Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;Lcom/d/a/a/g;Z)V

    .line 378
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    .line 352
    check-cast p1, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/FileMemberActionError;Lcom/d/a/a/g;)V

    return-void
.end method
