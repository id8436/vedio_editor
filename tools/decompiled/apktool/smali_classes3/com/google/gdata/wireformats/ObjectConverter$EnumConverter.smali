.class Lcom/google/gdata/wireformats/ObjectConverter$EnumConverter;
.super Lcom/google/gdata/wireformats/ObjectConverter;
.source "ObjectConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/wireformats/ObjectConverter",
        "<",
        "Ljava/lang/Enum;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/gdata/wireformats/ObjectConverter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/wireformats/ObjectConverter$1;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/gdata/wireformats/ObjectConverter$EnumConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convertValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;)",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 176
    if-nez p1, :cond_1

    .line 177
    const/4 v0, 0x0

    .line 186
    :cond_0
    return-object v0

    .line 179
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 180
    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->invalidEnumValue:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No such enum of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->withInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0
.end method

.method public bridge synthetic convertValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/wireformats/ObjectConverter$EnumConverter;->convertValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
