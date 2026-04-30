.class Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SharedFolderMemberError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 304
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 306
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 314
    :goto_0
    if-nez v0, :cond_1

    .line 315
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_0
    const/4 v1, 0x0

    .line 311
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 312
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_1
    const-string/jumbo v3, "invalid_dropbox_id"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 318
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .line 331
    :goto_1
    if-nez v1, :cond_2

    .line 332
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 333
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 335
    :cond_2
    return-object v0

    .line 320
    :cond_3
    const-string/jumbo v3, "not_a_member"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 321
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    goto :goto_1

    .line 323
    :cond_4
    const-string/jumbo v3, "no_explicit_access"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 325
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v0

    .line 326
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->noExplicitAccess(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object v0

    goto :goto_1

    .line 329
    :cond_5
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

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
    .line 272
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 277
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$1;->$SwitchMap$com$dropbox$core$v2$sharing$SharedFolderMemberError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->tag()Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 294
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 297
    :goto_0
    return-void

    .line 279
    :pswitch_0
    const-string/jumbo v0, "invalid_dropbox_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :pswitch_1
    const-string/jumbo v0, "not_a_member"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 288
    const-string/jumbo v0, "no_explicit_access"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 289
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->access$000(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;Lcom/d/a/a/g;Z)V

    .line 290
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 277
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
    .line 272
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;Lcom/d/a/a/g;)V

    return-void
.end method
