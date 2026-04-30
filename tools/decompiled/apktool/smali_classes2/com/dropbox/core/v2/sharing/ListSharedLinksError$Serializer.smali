.class Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ListSharedLinksError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/ListSharedLinksError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/ListSharedLinksError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 276
    const/4 v1, 0x1

    .line 277
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 285
    :goto_0
    if-nez v0, :cond_1

    .line 286
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    const/4 v1, 0x0

    .line 282
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 283
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 288
    :cond_1
    const-string/jumbo v2, "path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 290
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 291
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v0

    .line 292
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    move-result-object v0

    .line 300
    :goto_1
    if-nez v1, :cond_2

    .line 301
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 302
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 304
    :cond_2
    return-object v0

    .line 294
    :cond_3
    const-string/jumbo v2, "reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 295
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->RESET:Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    goto :goto_1

    .line 298
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->OTHER:Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

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
    .line 246
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/ListSharedLinksError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 251
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$1;->$SwitchMap$com$dropbox$core$v2$sharing$ListSharedLinksError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->tag()Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 265
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 253
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 254
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 255
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->access$000(Lcom/dropbox/core/v2/sharing/ListSharedLinksError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/d/a/a/g;)V

    .line 257
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 261
    :pswitch_1
    const-string/jumbo v0, "reset"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
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
    .line 246
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ListSharedLinksError;Lcom/d/a/a/g;)V

    return-void
.end method
