.class public final enum Lcom/google/gdata/data/batch/BatchOperationType;
.super Ljava/lang/Enum;
.source "BatchOperationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/batch/BatchOperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/batch/BatchOperationType;

.field private static final BY_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/data/batch/BatchOperationType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DELETE:Lcom/google/gdata/data/batch/BatchOperationType;

.field public static final enum INSERT:Lcom/google/gdata/data/batch/BatchOperationType;

.field public static final enum QUERY:Lcom/google/gdata/data/batch/BatchOperationType;

.field public static final enum UPDATE:Lcom/google/gdata/data/batch/BatchOperationType;


# instance fields
.field private final method:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 38
    new-instance v1, Lcom/google/gdata/data/batch/BatchOperationType;

    const-string/jumbo v2, "QUERY"

    const-string/jumbo v3, "query"

    const-string/jumbo v4, "GET"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/gdata/data/batch/BatchOperationType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/google/gdata/data/batch/BatchOperationType;->QUERY:Lcom/google/gdata/data/batch/BatchOperationType;

    .line 41
    new-instance v1, Lcom/google/gdata/data/batch/BatchOperationType;

    const-string/jumbo v2, "INSERT"

    const-string/jumbo v3, "insert"

    const-string/jumbo v4, "POST"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/google/gdata/data/batch/BatchOperationType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/google/gdata/data/batch/BatchOperationType;->INSERT:Lcom/google/gdata/data/batch/BatchOperationType;

    .line 44
    new-instance v1, Lcom/google/gdata/data/batch/BatchOperationType;

    const-string/jumbo v2, "UPDATE"

    const-string/jumbo v3, "update"

    const-string/jumbo v4, "PUT"

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/google/gdata/data/batch/BatchOperationType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/google/gdata/data/batch/BatchOperationType;->UPDATE:Lcom/google/gdata/data/batch/BatchOperationType;

    .line 47
    new-instance v1, Lcom/google/gdata/data/batch/BatchOperationType;

    const-string/jumbo v2, "DELETE"

    const-string/jumbo v3, "delete"

    const-string/jumbo v4, "DELETE"

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/google/gdata/data/batch/BatchOperationType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/google/gdata/data/batch/BatchOperationType;->DELETE:Lcom/google/gdata/data/batch/BatchOperationType;

    .line 35
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/gdata/data/batch/BatchOperationType;

    sget-object v2, Lcom/google/gdata/data/batch/BatchOperationType;->QUERY:Lcom/google/gdata/data/batch/BatchOperationType;

    aput-object v2, v1, v0

    sget-object v2, Lcom/google/gdata/data/batch/BatchOperationType;->INSERT:Lcom/google/gdata/data/batch/BatchOperationType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/gdata/data/batch/BatchOperationType;->UPDATE:Lcom/google/gdata/data/batch/BatchOperationType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/gdata/data/batch/BatchOperationType;->DELETE:Lcom/google/gdata/data/batch/BatchOperationType;

    aput-object v2, v1, v7

    sput-object v1, Lcom/google/gdata/data/batch/BatchOperationType;->$VALUES:[Lcom/google/gdata/data/batch/BatchOperationType;

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/gdata/data/batch/BatchOperationType;->BY_NAME:Ljava/util/Map;

    .line 52
    invoke-static {}, Lcom/google/gdata/data/batch/BatchOperationType;->values()[Lcom/google/gdata/data/batch/BatchOperationType;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 53
    sget-object v4, Lcom/google/gdata/data/batch/BatchOperationType;->BY_NAME:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/gdata/data/batch/BatchOperationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p3, p0, Lcom/google/gdata/data/batch/BatchOperationType;->name:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/google/gdata/data/batch/BatchOperationType;->method:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static forName(Ljava/lang/String;)Lcom/google/gdata/data/batch/BatchOperationType;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/google/gdata/data/batch/BatchOperationType;->BY_NAME:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchOperationType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/batch/BatchOperationType;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/google/gdata/data/batch/BatchOperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/BatchOperationType;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/batch/BatchOperationType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/gdata/data/batch/BatchOperationType;->$VALUES:[Lcom/google/gdata/data/batch/BatchOperationType;

    invoke-virtual {v0}, [Lcom/google/gdata/data/batch/BatchOperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/batch/BatchOperationType;

    return-object v0
.end method


# virtual methods
.method public generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/google/gdata/data/batch/BatchOperationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 106
    sget-object v1, Lcom/google/gdata/util/Namespaces;->batchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "operation"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchOperationType;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchOperationType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchOperationType;->name:Ljava/lang/String;

    return-object v0
.end method
