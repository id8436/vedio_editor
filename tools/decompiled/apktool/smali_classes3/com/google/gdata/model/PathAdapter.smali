.class Lcom/google/gdata/model/PathAdapter;
.super Ljava/lang/Object;
.source "PathAdapter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/model/ElementMetadata;)V
    .locals 0

    .prologue
    .line 47
    invoke-static {p0}, Lcom/google/gdata/model/PathAdapter;->checkNotMultiple(Lcom/google/gdata/model/ElementMetadata;)V

    return-void
.end method

.method private static checkNotMultiple(Lcom/google/gdata/model/ElementMetadata;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 284
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/gdata/model/ElementMetadata;->getCardinality()Lcom/google/gdata/model/ElementMetadata$Cardinality;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/model/ElementMetadata$Cardinality;->SINGLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    if-eq v0, v1, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Metadata for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/gdata/model/ElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " represents a multiple-cardinality element."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " The path cannot contain more than one multiple-cardinality"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " element."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    return-void
.end method

.method static createFinalElement(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-static {p0, p1}, Lcom/google/gdata/model/PathAdapter;->createParentElement(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    move-result-object v1

    .line 244
    invoke-virtual {p0}, Lcom/google/gdata/model/Path;->selectsAttribute()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v1, :cond_2

    :cond_0
    move-object v0, v1

    .line 257
    :cond_1
    :goto_0
    return-object v0

    .line 247
    :cond_2
    invoke-virtual {p0}, Lcom/google/gdata/model/Path;->getSelectedElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v2

    .line 248
    invoke-virtual {v1, v2}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 249
    if-nez v0, :cond_1

    .line 251
    :try_start_0
    invoke-static {v2}, Lcom/google/gdata/model/Element;->createElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 252
    invoke-virtual {v1, v0}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    new-instance v1, Lcom/google/gdata/util/ParseException;

    invoke-direct {v1, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static createParentElement(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 152
    const-string/jumbo v0, "path"

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string/jumbo v0, "rootElement"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {p0}, Lcom/google/gdata/model/Path;->getSteps()Ljava/util/List;

    move-result-object v2

    .line 155
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    const/4 p1, 0x0

    .line 163
    :cond_0
    return-object p1

    .line 159
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 160
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 161
    invoke-static {p1, v0}, Lcom/google/gdata/model/PathAdapter;->getOrCreateChild(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object p1

    .line 159
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static createParentElements(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;I)Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Path;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 174
    const-string/jumbo v0, "path"

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string/jumbo v0, "rootElement"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {p0}, Lcom/google/gdata/model/Path;->getSteps()Ljava/util/List;

    move-result-object v8

    .line 178
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 232
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move v5, v6

    move-object v1, v7

    move-object v4, p1

    .line 184
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v5, v0, :cond_8

    .line 185
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 186
    if-nez p2, :cond_2

    move-object v2, v7

    .line 191
    :goto_2
    if-eqz v1, :cond_4

    .line 192
    invoke-static {v2}, Lcom/google/gdata/model/PathAdapter;->checkNotMultiple(Lcom/google/gdata/model/ElementMetadata;)V

    .line 194
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 195
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/Element;

    .line 196
    invoke-static {v1, v0}, Lcom/google/gdata/model/PathAdapter;->getOrCreateChild(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 186
    :cond_2
    invoke-interface {p2, v0}, Lcom/google/gdata/model/ElementMetadata;->bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    .line 184
    :goto_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object p2, v0

    move-object v4, v2

    goto :goto_1

    .line 205
    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/google/gdata/model/ElementMetadata;->getCardinality()Lcom/google/gdata/model/ElementMetadata$Cardinality;

    move-result-object v3

    sget-object v9, Lcom/google/gdata/model/ElementMetadata$Cardinality;->SINGLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    if-ne v3, v9, :cond_6

    .line 207
    :cond_5
    invoke-static {v4, v0}, Lcom/google/gdata/model/PathAdapter;->getOrCreateChild(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    .line 210
    goto :goto_4

    .line 215
    :cond_6
    invoke-static {p3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v1

    move v3, v6

    .line 216
    :goto_5
    if-ge v3, p3, :cond_7

    .line 218
    :try_start_0
    invoke-static {v0}, Lcom/google/gdata/model/Element;->createElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v9

    .line 219
    invoke-virtual {v4, v9}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 220
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 221
    :catch_0
    move-exception v0

    .line 222
    new-instance v1, Lcom/google/gdata/util/ParseException;

    invoke-direct {v1, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    move-object v0, v2

    move-object v2, v4

    .line 226
    goto :goto_4

    .line 229
    :cond_8
    if-nez v1, :cond_0

    .line 232
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0
.end method

.method static elementAdapter(Lcom/google/gdata/model/Path;)Lcom/google/gdata/model/PathAdapter$ElementAdapter;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;

    invoke-direct {v0, p0}, Lcom/google/gdata/model/PathAdapter$ElementAdapter;-><init>(Lcom/google/gdata/model/Path;)V

    return-object v0
.end method

.method static generateAttributeValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/AttributeMetadata;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;",
            "Lcom/google/gdata/model/AttributeMetadata",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 300
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 301
    invoke-interface {p3, p0, p1}, Lcom/google/gdata/model/AttributeMetadata;->generateValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static generateTextValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 327
    if-eqz p1, :cond_0

    .line 328
    invoke-interface {p1, p0, p1}, Lcom/google/gdata/model/ElementMetadata;->generateValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/Element;->getTextValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static getFinalElement(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    .locals 2

    .prologue
    .line 103
    invoke-static {p0, p1}, Lcom/google/gdata/model/PathAdapter;->getParentElement(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/google/gdata/model/Path;->selectsAttribute()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/model/Path;->getSelectedElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    goto :goto_0
.end method

.method static getFinalElements(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Path;",
            "Lcom/google/gdata/model/Element;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 117
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/google/gdata/model/Path;->getSteps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/MetadataKey;

    .line 120
    instance-of v1, v0, Lcom/google/gdata/model/AttributeKey;

    if-eqz v1, :cond_2

    :cond_0
    move-object v0, v3

    .line 143
    :cond_1
    return-object v0

    .line 123
    :cond_2
    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 127
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 128
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 129
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/Element;

    .line 130
    invoke-virtual {v1, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 139
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v3, v0

    .line 142
    goto :goto_0

    .line 136
    :cond_4
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/Element;

    .line 137
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/Element;

    invoke-virtual {v1, v0}, Lcom/google/gdata/model/Element;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method private static getOrCreateChild(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/Element;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_0

    .line 272
    :goto_0
    return-object v0

    .line 270
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/gdata/model/Element;->createElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 271
    invoke-virtual {p0, v0}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    new-instance v1, Lcom/google/gdata/util/ParseException;

    invoke-direct {v1, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getParentElement(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 74
    const-string/jumbo v0, "path"

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v0, "rootElement"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p0}, Lcom/google/gdata/model/Path;->getSteps()Ljava/util/List;

    move-result-object v3

    .line 77
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, v2

    .line 88
    :cond_0
    :goto_0
    return-object p1

    .line 81
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 82
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 83
    invoke-virtual {p1, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object p1

    .line 84
    if-nez p1, :cond_2

    move-object p1, v2

    .line 85
    goto :goto_0

    .line 81
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method static parseAttributeValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/AttributeMetadata;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;",
            "Lcom/google/gdata/model/AttributeMetadata",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 313
    if-nez p3, :cond_0

    .line 314
    invoke-virtual {p0, p2, p4}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-interface {p3, p0, p1, p4}, Lcom/google/gdata/model/AttributeMetadata;->parseValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static parseTextValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 339
    if-eqz p1, :cond_0

    .line 340
    invoke-interface {p1, p0, p1, p2}, Lcom/google/gdata/model/ElementMetadata;->parseValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    goto :goto_0
.end method

.method static valueAdapter(Lcom/google/gdata/model/Path;)Lcom/google/gdata/model/PathAdapter$ValueAdapter;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/google/gdata/model/PathAdapter$ValueAdapter;

    invoke-direct {v0, p0}, Lcom/google/gdata/model/PathAdapter$ValueAdapter;-><init>(Lcom/google/gdata/model/Path;)V

    return-object v0
.end method
