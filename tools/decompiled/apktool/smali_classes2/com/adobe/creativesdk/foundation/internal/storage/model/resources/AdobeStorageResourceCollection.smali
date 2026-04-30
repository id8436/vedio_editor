.class public Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
.super Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;
.source "AdobeStorageResourceCollection.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final AdobeStorageResourceCollectionType:Ljava/lang/String; = "application/vnd.adobe.directory+json"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;",
            ">;"
        }
    .end annotation
.end field

.field filterByType:Ljava/lang/String;

.field private limit:I

.field private nextStartIndex:Ljava/lang/String;

.field private order:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

.field private orderBy:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

.field private percentEncodedQuery:Ljava/lang/String;

.field private startIndex:Ljava/lang/String;

.field private total_children:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 531
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection$1;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection$1;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;-><init>()V

    .line 109
    const-string/jumbo v0, "application/vnd.adobe.directory+json"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->type:Ljava/lang/String;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->isCollection:Z

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;)V

    .line 116
    const-string/jumbo v0, "application/vnd.adobe.directory+json"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->type:Ljava/lang/String;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->isCollection:Z

    .line 118
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getPercentEncodedQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->percentEncodedQuery:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getStartIndex()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->startIndex:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getNextStartIndex()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->nextStartIndex:Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->children:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->children:Ljava/util/ArrayList;

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getLimit()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->limit:I

    .line 125
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getNumChildren()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->total_children:I

    .line 126
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getOrder()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->order:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    .line 127
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getOrderBy()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->orderBy:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    .line 128
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getFilterByType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->filterByType:Ljava/lang/String;

    .line 129
    return-void
.end method

.method static synthetic access$002(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;I)I
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->total_children:I

    return p1
.end method

.method public static collectionFromHref(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
    .locals 4

    .prologue
    .line 176
    if-nez p0, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 191
    :goto_0
    return-object v0

    .line 179
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;-><init>()V

    .line 180
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->getLastPathComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    :try_start_0
    new-instance v1, Ljava/net/URI;

    const-string/jumbo v3, "UTF-8"

    invoke-static {p0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    :goto_1
    iput-object v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->name:Ljava/lang/String;

    goto :goto_0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 186
    :catch_1
    move-exception v1

    .line 187
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
    .locals 2

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 153
    :goto_0
    return-object v0

    .line 145
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;-><init>()V

    .line 146
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->getLastPathComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    iput-object p0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    .line 151
    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static collectionFromHref(Ljava/net/URI;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
    .locals 2

    .prologue
    .line 158
    if-nez p0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    .line 161
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;-><init>()V

    .line 162
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->getLastPathComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    iput-object p0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    .line 167
    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->name:Ljava/lang/String;

    .line 168
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->modified:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getAdobestorageresourcecollectiontype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    const-string/jumbo v0, "application/vnd.adobe.directory+json"

    return-object v0
.end method

.method private static mapToQueryString(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 513
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 514
    const-string/jumbo v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 517
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 519
    if-eqz v1, :cond_1

    :try_start_0
    const-string/jumbo v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const-string/jumbo v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    if-eqz v0, :cond_2

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    :catch_0
    move-exception v0

    .line 525
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Problem encoding the collection params into query string"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 519
    :cond_1
    :try_start_1
    const-string/jumbo v1, ""

    goto :goto_1

    .line 521
    :cond_2
    const-string/jumbo v0, ""
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 528
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilterByType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->filterByType:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->limit:I

    return v0
.end method

.method public getNextStartIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->nextStartIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getNumChildren()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->total_children:I

    return v0
.end method

.method public getOrder()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->order:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    return-object v0
.end method

.method public getOrderBy()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->orderBy:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    return-object v0
.end method

.method public getPercentEncodedQuery()Ljava/lang/String;
    .locals 4

    .prologue
    .line 452
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->percentEncodedQuery:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 454
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 456
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->startIndex:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 458
    const-string/jumbo v0, "start"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->startIndex:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->limit:I

    if-lez v0, :cond_1

    .line 462
    const-string/jumbo v0, "limit"

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->order:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;->ADOBE_STORAGE_ORDER_DESCENDING:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    if-ne v0, v2, :cond_5

    .line 466
    const-string/jumbo v0, "order"

    const-string/jumbo v2, "desc"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :goto_0
    const/4 v0, 0x0

    .line 473
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->orderBy:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    if-eqz v2, :cond_2

    .line 474
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection$2;->$SwitchMap$com$adobe$creativesdk$foundation$internal$storage$model$resources$AdobeStorageOrderByProperty:[I

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->orderBy:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 488
    :cond_2
    :goto_1
    if-eqz v0, :cond_6

    .line 490
    const-string/jumbo v2, "orderby"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :goto_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->filterByType:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 498
    const-string/jumbo v0, "type"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->filterByType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    :cond_3
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->mapToQueryString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->percentEncodedQuery:Ljava/lang/String;

    .line 504
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->percentEncodedQuery:Ljava/lang/String;

    return-object v0

    .line 470
    :cond_5
    const-string/jumbo v0, "order"

    const-string/jumbo v2, "asc"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 476
    :pswitch_0
    const-string/jumbo v0, "name"

    goto :goto_1

    .line 479
    :pswitch_1
    const-string/jumbo v0, "modified"

    goto :goto_1

    .line 482
    :pswitch_2
    const-string/jumbo v0, "ordinal"

    goto :goto_1

    .line 493
    :cond_6
    const-string/jumbo v0, "orderby"

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getStartIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->startIndex:Ljava/lang/String;

    return-object v0
.end method

.method isCollection()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->nextStartIndex:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetPageIndex()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->startIndex:Ljava/lang/String;

    .line 201
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->nextStartIndex:Ljava/lang/String;

    .line 202
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->percentEncodedQuery:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setChildren(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 436
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->children:Ljava/util/ArrayList;

    .line 437
    return-void
.end method

.method public setFilterByType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->filterByType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->filterByType:Ljava/lang/String;

    .line 420
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->resetPageIndex()V

    .line 422
    :cond_0
    return-void
.end method

.method public setLimit(I)V
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->limit:I

    if-eq p1, v0, :cond_0

    .line 375
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->limit:I

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->percentEncodedQuery:Ljava/lang/String;

    .line 378
    :cond_0
    return-void
.end method

.method public setNextStartIndex(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->nextStartIndex:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setOrder(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;)V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->order:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    if-eq p1, v0, :cond_0

    .line 393
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->order:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    .line 394
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->resetPageIndex()V

    .line 396
    :cond_0
    return-void
.end method

.method public setOrderBy(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;)V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->orderBy:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    if-eq p1, v0, :cond_0

    .line 406
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->orderBy:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    .line 407
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->resetPageIndex()V

    .line 409
    :cond_0
    return-void
.end method

.method public setPercentEncodedQuery(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->percentEncodedQuery:Ljava/lang/String;

    .line 447
    return-void
.end method

.method public setStartIndex(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 360
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->startIndex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->startIndex:Ljava/lang/String;

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->percentEncodedQuery:Ljava/lang/String;

    .line 365
    :cond_0
    return-void
.end method

.method public updateFromData(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/storage/model/util/ParsingDataException;
        }
    .end annotation

    .prologue
    .line 341
    .line 344
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->JSONObjectWithData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0, v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->updateFromDictionary(Lorg/json/JSONObject;Z)V

    .line 352
    return-void

    .line 348
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    const-string/jumbo v1, "Parsed collection data is not of type dictionary."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createStorageError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    move-result-object v0

    .line 350
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/ParsingDataException;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/ParsingDataException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    throw v1
.end method

.method updateFromDictionary(Lorg/json/JSONObject;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/storage/model/util/ParsingDataException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 215
    .line 217
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->internalID:Ljava/lang/String;

    .line 218
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->name:Ljava/lang/String;

    .line 219
    const-string/jumbo v0, "etag"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->etag:Ljava/lang/String;

    .line 220
    const-string/jumbo v0, "modified"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->modified:Ljava/lang/String;

    .line 221
    const-string/jumbo v0, "ordinal"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->ordinal:J

    .line 222
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->type:Ljava/lang/String;

    .line 223
    const-string/jumbo v0, "total_children"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "total_children"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->total_children:I

    .line 224
    const-string/jumbo v0, "_links"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->links:Lorg/json/JSONObject;

    .line 226
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->name:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 227
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    const-string/jumbo v1, "Collection doesn\'t have a name."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createStorageError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/ParsingDataException;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/ParsingDataException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    throw v1

    .line 223
    :cond_0
    const-string/jumbo v0, "children"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "children"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->etag:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 232
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    const-string/jumbo v1, "Collection doesn\'t have an etag."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createStorageError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    move-result-object v0

    .line 234
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/ParsingDataException;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/ParsingDataException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    throw v1

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->modified:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 237
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    const-string/jumbo v1, "Collection doesn\'t have a modified time."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createStorageError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    move-result-object v0

    .line 239
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/ParsingDataException;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/ParsingDataException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    throw v1

    .line 242
    :cond_4
    const-string/jumbo v0, "collaboration"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;->ADOBE_COLLABORATION_ROLE_TYPE_OWNER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collaboration_role:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    .line 244
    if-nez v0, :cond_6

    .line 245
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_PRIVATE:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collaboration:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    .line 261
    :cond_5
    :goto_1
    const-string/jumbo v0, "children"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 264
    if-eqz v5, :cond_11

    .line 266
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 268
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_e

    .line 272
    :try_start_0
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 273
    const-string/jumbo v0, "name"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->escapeAssetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 276
    const-string/jumbo v0, "_links"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 277
    if-eqz v0, :cond_9

    const-string/jumbo v3, "http://ns.adobe.com/ccapi/path"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v3, v0

    .line 278
    :goto_3
    if-eqz v3, :cond_a

    const-string/jumbo v0, "href"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    :goto_4
    if-eqz v3, :cond_b

    const-string/jumbo v9, "templated"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 283
    :goto_5
    if-eqz v0, :cond_c

    .line 285
    if-eqz v3, :cond_12

    .line 286
    invoke-static {v0}, Lcom/c/a/a/e;->a(Ljava/lang/String;)Lcom/c/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/a/e;->d()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v3, v0

    .line 290
    :goto_6
    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 298
    :goto_7
    :try_start_2
    const-string/jumbo v3, "type"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    const-string/jumbo v8, "application/vnd.adobe.directory+json"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 302
    new-instance v3, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    .line 303
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 304
    const/4 v3, 0x0

    invoke-virtual {v0, v7, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->updateFromDictionary(Lorg/json/JSONObject;Z)V

    .line 306
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    .line 268
    :goto_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    .line 248
    :cond_6
    const-string/jumbo v2, "outgoing"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 249
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_SHAREDBYUSER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collaboration:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    goto/16 :goto_1

    .line 251
    :cond_7
    const-string/jumbo v2, "incoming"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 252
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collaboration:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    .line 253
    const-string/jumbo v0, "collaboration_role"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    if-nez v0, :cond_8

    .line 255
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;->ADOBE_COLLABORATION_ROLE_TYPE_EDITOR:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collaboration_role:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    goto/16 :goto_1

    .line 256
    :cond_8
    const-string/jumbo v2, "VIEWER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 257
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;->ADOBE_COLLABORATION_ROLE_TYPE_VIEWER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collaboration_role:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    goto/16 :goto_1

    :cond_9
    move-object v3, v4

    .line 277
    goto/16 :goto_3

    :cond_a
    move-object v0, v4

    .line 278
    goto/16 :goto_4

    :cond_b
    move v3, v1

    .line 279
    goto/16 :goto_5

    .line 291
    :catch_0
    move-exception v0

    .line 292
    :try_start_3
    new-instance v0, Ljava/net/URI;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_7

    .line 318
    :catch_1
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_8

    .line 295
    :cond_c
    :try_start_4
    new-instance v0, Ljava/net/URI;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 310
    :cond_d
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v0

    .line 311
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 312
    invoke-virtual {v0, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->updateFromCollectionDictionary(Lorg/json/JSONObject;)V

    .line 314
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_8

    .line 324
    :cond_e
    if-eqz p2, :cond_f

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 325
    :goto_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_10

    .line 326
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->children:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 331
    :cond_f
    iput-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->children:Ljava/util/ArrayList;

    .line 337
    :cond_10
    :goto_a
    return-void

    .line 335
    :cond_11
    iput-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->children:Ljava/util/ArrayList;

    goto :goto_a

    :cond_12
    move-object v3, v0

    goto/16 :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->internalID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->internalID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 587
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 588
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->etag:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->etag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 593
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->created:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 596
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->created:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 600
    :goto_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->modified:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 601
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->modified:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 605
    :goto_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->type:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 606
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 610
    :goto_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collaboration:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 611
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collaboration_role:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 612
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->total_children:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    return-void

    .line 585
    :cond_0
    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 591
    :cond_1
    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 598
    :cond_2
    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 603
    :cond_3
    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 608
    :cond_4
    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4
.end method
