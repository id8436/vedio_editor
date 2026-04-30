.class Lcom/dropbox/core/v2/files/ListRevisionsError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ListRevisionsError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/ListRevisionsError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/ListRevisionsError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lcom/dropbox/core/v2/files/ListRevisionsError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ListRevisionsError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/ListRevisionsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListRevisionsError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/ListRevisionsError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 248
    const/4 v1, 0x1

    .line 249
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListRevisionsError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 257
    :goto_0
    if-nez v0, :cond_1

    .line 258
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    const/4 v1, 0x0

    .line 254
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListRevisionsError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 255
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListRevisionsError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_1
    const-string/jumbo v2, "path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/ListRevisionsError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 263
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v0

    .line 264
    invoke-static {v0}, Lcom/dropbox/core/v2/files/ListRevisionsError;->path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/ListRevisionsError;

    move-result-object v0

    .line 269
    :goto_1
    if-nez v1, :cond_2

    .line 270
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListRevisionsError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 271
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListRevisionsError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 273
    :cond_2
    return-object v0

    .line 267
    :cond_3
    sget-object v0, Lcom/dropbox/core/v2/files/ListRevisionsError;->OTHER:Lcom/dropbox/core/v2/files/ListRevisionsError;

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
    .line 222
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/ListRevisionsError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/ListRevisionsError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/ListRevisionsError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 227
    sget-object v0, Lcom/dropbox/core/v2/files/ListRevisionsError$1;->$SwitchMap$com$dropbox$core$v2$files$ListRevisionsError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/ListRevisionsError;->tag()Lcom/dropbox/core/v2/files/ListRevisionsError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/ListRevisionsError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 237
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 229
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 230
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/ListRevisionsError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 231
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListRevisionsError;->access$000(Lcom/dropbox/core/v2/files/ListRevisionsError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/d/a/a/g;)V

    .line 233
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 227
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
    .line 222
    check-cast p1, Lcom/dropbox/core/v2/files/ListRevisionsError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/ListRevisionsError$Serializer;->serialize(Lcom/dropbox/core/v2/files/ListRevisionsError;Lcom/d/a/a/g;)V

    return-void
.end method
