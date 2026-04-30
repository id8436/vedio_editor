.class Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ListUsersCursorError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/ListUsersCursorError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/paper/ListUsersCursorError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 297
    const/4 v1, 0x1

    .line 298
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 306
    :goto_0
    if-nez v0, :cond_1

    .line 307
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    const/4 v1, 0x0

    .line 303
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 304
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 309
    :cond_1
    const-string/jumbo v2, "insufficient_permissions"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 310
    sget-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    .line 327
    :goto_1
    if-nez v1, :cond_2

    .line 328
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 329
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 331
    :cond_2
    return-object v0

    .line 312
    :cond_3
    const-string/jumbo v2, "other"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 313
    sget-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->OTHER:Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    goto :goto_1

    .line 315
    :cond_4
    const-string/jumbo v2, "doc_not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 316
    sget-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    goto :goto_1

    .line 318
    :cond_5
    const-string/jumbo v2, "cursor_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 320
    const-string/jumbo v0, "cursor_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 321
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    move-result-object v0

    .line 322
    invoke-static {v0}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->cursorError(Lcom/dropbox/core/v2/paper/PaperApiCursorError;)Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    move-result-object v0

    goto :goto_1

    .line 325
    :cond_6
    new-instance v1, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1
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
    .line 259
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/ListUsersCursorError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 264
    sget-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$1;->$SwitchMap$com$dropbox$core$v2$paper$ListUsersCursorError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->tag()Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->tag()Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :pswitch_0
    const-string/jumbo v0, "insufficient_permissions"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 289
    :goto_0
    return-void

    .line 270
    :pswitch_1
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :pswitch_2
    const-string/jumbo v0, "doc_not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :pswitch_3
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 279
    const-string/jumbo v0, "cursor_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 280
    const-string/jumbo v0, "cursor_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 281
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->access$000(Lcom/dropbox/core/v2/paper/ListUsersCursorError;)Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;->serialize(Lcom/dropbox/core/v2/paper/PaperApiCursorError;Lcom/d/a/a/g;)V

    .line 282
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 264
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
    .line 259
    check-cast p1, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->serialize(Lcom/dropbox/core/v2/paper/ListUsersCursorError;Lcom/d/a/a/g;)V

    return-void
.end method
