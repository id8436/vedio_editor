.class Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ListPaperDocsArgs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 315
    new-instance v0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 339
    if-nez p2, :cond_0

    .line 340
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 341
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 343
    :cond_0
    if-nez v0, :cond_7

    .line 344
    sget-object v3, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;->DOCS_ACCESSED:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    .line 345
    sget-object v2, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;->ACCESSED:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    .line 346
    sget-object v1, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;->ASCENDING:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    .line 347
    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 348
    :goto_0
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v4

    sget-object v5, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v4, v5, :cond_5

    .line 349
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v4

    .line 350
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 351
    const-string/jumbo v5, "filter_by"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 352
    sget-object v3, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy$Serializer;

    invoke-virtual {v3, p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    move-result-object v3

    goto :goto_0

    .line 354
    :cond_1
    const-string/jumbo v5, "sort_by"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 355
    sget-object v2, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy$Serializer;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    move-result-object v2

    goto :goto_0

    .line 357
    :cond_2
    const-string/jumbo v5, "sort_order"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 358
    sget-object v1, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder$Serializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    move-result-object v1

    goto :goto_0

    .line 360
    :cond_3
    const-string/jumbo v5, "limit"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 361
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->int32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 364
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;->skipValue(Lcom/d/a/a/k;)V

    goto :goto_0

    .line 367
    :cond_5
    new-instance v4, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;-><init>(Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;I)V

    .line 372
    if-nez p2, :cond_6

    .line 373
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 375
    :cond_6
    return-object v4

    .line 370
    :cond_7
    new-instance v1, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No subtype found that matches tag: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 319
    if-nez p3, :cond_0

    .line 320
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 322
    :cond_0
    const-string/jumbo v0, "filter_by"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->filterBy:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy$Serializer;->serialize(Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;Lcom/d/a/a/g;)V

    .line 324
    const-string/jumbo v0, "sort_by"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 325
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->sortBy:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy$Serializer;->serialize(Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;Lcom/d/a/a/g;)V

    .line 326
    const-string/jumbo v0, "sort_order"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 327
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->sortOrder:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder$Serializer;->serialize(Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;Lcom/d/a/a/g;)V

    .line 328
    const-string/jumbo v0, "limit"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->int32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget v1, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 330
    if-nez p3, :cond_1

    .line 331
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 333
    :cond_1
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 314
    check-cast p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;->serialize(Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;Lcom/d/a/a/g;Z)V

    return-void
.end method
