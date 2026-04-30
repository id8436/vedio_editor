.class Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "TemplateFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/fileproperties/TemplateFilter;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;

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
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/TemplateFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 302
    const/4 v1, 0x1

    .line 303
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 311
    :goto_0
    if-nez v0, :cond_1

    .line 312
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    const/4 v1, 0x0

    .line 308
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 309
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 314
    :cond_1
    const-string/jumbo v2, "filter_none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 315
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->FILTER_NONE:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    .line 326
    :goto_1
    if-nez v1, :cond_2

    .line 327
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 328
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 330
    :cond_2
    return-object v0

    .line 317
    :cond_3
    const-string/jumbo v2, "filter_some"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 319
    const-string/jumbo v0, "filter_some"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 320
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 321
    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->filterSome(Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    move-result-object v0

    goto :goto_1

    .line 324
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

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
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/fileproperties/TemplateFilter;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 277
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$1;->$SwitchMap$com$dropbox$core$v2$fileproperties$TemplateFilter$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->tag()Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 291
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void

    .line 279
    :pswitch_0
    const-string/jumbo v0, "filter_none"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 284
    const-string/jumbo v0, "filter_some"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 285
    const-string/jumbo v0, "filter_some"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->access$000(Lcom/dropbox/core/v2/fileproperties/TemplateFilter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 287
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 277
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
    .line 272
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/TemplateFilter;Lcom/d/a/a/g;)V

    return-void
.end method
