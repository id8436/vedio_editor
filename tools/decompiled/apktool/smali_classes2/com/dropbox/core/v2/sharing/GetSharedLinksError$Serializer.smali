.class Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "GetSharedLinksError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/GetSharedLinksError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 227
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/GetSharedLinksError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 252
    const/4 v1, 0x1

    .line 253
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 261
    :goto_0
    if-nez v0, :cond_1

    .line 262
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    const/4 v1, 0x0

    .line 258
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 259
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 264
    :cond_1
    const-string/jumbo v2, "path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 265
    const/4 v0, 0x0

    .line 266
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v2

    sget-object v3, Lcom/d/a/a/o;->c:Lcom/d/a/a/o;

    if-eq v2, v3, :cond_2

    .line 267
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 268
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    :cond_2
    if-nez v0, :cond_4

    .line 271
    invoke-static {}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->path()Lcom/dropbox/core/v2/sharing/GetSharedLinksError;

    move-result-object v0

    .line 280
    :goto_1
    if-nez v1, :cond_3

    .line 281
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 282
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 284
    :cond_3
    return-object v0

    .line 274
    :cond_4
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->path(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinksError;

    move-result-object v0

    goto :goto_1

    .line 278
    :cond_5
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->OTHER:Lcom/dropbox/core/v2/sharing/GetSharedLinksError;

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
    .line 226
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/GetSharedLinksError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/GetSharedLinksError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 231
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$1;->$SwitchMap$com$dropbox$core$v2$sharing$GetSharedLinksError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->tag()Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 241
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 233
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 234
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 235
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->access$000(Lcom/dropbox/core/v2/sharing/GetSharedLinksError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 237
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .line 226
    check-cast p1, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/GetSharedLinksError;Lcom/d/a/a/g;)V

    return-void
.end method
