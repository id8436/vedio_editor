.class Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "RelinquishFileMembershipError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 268
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 301
    const/4 v1, 0x1

    .line 302
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 310
    :goto_0
    if-nez v0, :cond_1

    .line 311
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    const/4 v1, 0x0

    .line 307
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 308
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 313
    :cond_1
    const-string/jumbo v2, "access_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 315
    const-string/jumbo v0, "access_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 316
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v0

    .line 317
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    move-result-object v0

    .line 328
    :goto_1
    if-nez v1, :cond_2

    .line 329
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 330
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 332
    :cond_2
    return-object v0

    .line 319
    :cond_3
    const-string/jumbo v2, "group_access"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 320
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    goto :goto_1

    .line 322
    :cond_4
    const-string/jumbo v2, "no_permission"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 323
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    goto :goto_1

    .line 326
    :cond_5
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

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
    .line 267
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 272
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$1;->$SwitchMap$com$dropbox$core$v2$sharing$RelinquishFileMembershipError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->tag()Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 290
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 293
    :goto_0
    return-void

    .line 274
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 275
    const-string/jumbo v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 276
    const-string/jumbo v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->access$000(Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/d/a/a/g;)V

    .line 278
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 282
    :pswitch_1
    const-string/jumbo v0, "group_access"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :pswitch_2
    const-string/jumbo v0, "no_permission"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 272
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
    .line 267
    check-cast p1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;Lcom/d/a/a/g;)V

    return-void
.end method
