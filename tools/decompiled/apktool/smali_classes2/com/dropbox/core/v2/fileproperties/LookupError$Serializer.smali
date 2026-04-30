.class Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "LookupError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/fileproperties/LookupError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 315
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/LookupError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 355
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 356
    const/4 v1, 0x1

    .line 357
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 365
    :goto_0
    if-nez v0, :cond_1

    .line 366
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    const/4 v1, 0x0

    .line 362
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 363
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 368
    :cond_1
    const-string/jumbo v2, "malformed_path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 370
    const-string/jumbo v0, "malformed_path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 371
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 372
    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/LookupError;->malformedPath(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/LookupError;

    move-result-object v0

    .line 389
    :goto_1
    if-nez v1, :cond_2

    .line 390
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 391
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 393
    :cond_2
    return-object v0

    .line 374
    :cond_3
    const-string/jumbo v2, "not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 375
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError;->NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/LookupError;

    goto :goto_1

    .line 377
    :cond_4
    const-string/jumbo v2, "not_file"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 378
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError;->NOT_FILE:Lcom/dropbox/core/v2/fileproperties/LookupError;

    goto :goto_1

    .line 380
    :cond_5
    const-string/jumbo v2, "not_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 381
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError;->NOT_FOLDER:Lcom/dropbox/core/v2/fileproperties/LookupError;

    goto :goto_1

    .line 383
    :cond_6
    const-string/jumbo v2, "restricted_content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 384
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/LookupError;

    goto :goto_1

    .line 387
    :cond_7
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError;->OTHER:Lcom/dropbox/core/v2/fileproperties/LookupError;

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
    .line 314
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/LookupError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/fileproperties/LookupError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 319
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError$1;->$SwitchMap$com$dropbox$core$v2$fileproperties$LookupError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/LookupError;->tag()Lcom/dropbox/core/v2/fileproperties/LookupError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/LookupError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 345
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 348
    :goto_0
    return-void

    .line 321
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 322
    const-string/jumbo v0, "malformed_path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 323
    const-string/jumbo v0, "malformed_path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/LookupError;->access$000(Lcom/dropbox/core/v2/fileproperties/LookupError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 325
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 329
    :pswitch_1
    const-string/jumbo v0, "not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :pswitch_2
    const-string/jumbo v0, "not_file"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :pswitch_3
    const-string/jumbo v0, "not_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :pswitch_4
    const-string/jumbo v0, "restricted_content"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
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
    .line 314
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/LookupError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/LookupError;Lcom/d/a/a/g;)V

    return-void
.end method
