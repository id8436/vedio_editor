.class public Lcom/google/api/gbase/client/GoogleBaseAttributeType;
.super Ljava/lang/Object;
.source "GoogleBaseAttributeType.java"


# static fields
.field public static final BOOLEAN:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

.field public static final DATE:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

.field public static final DATE_TIME:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

.field public static final DATE_TIME_RANGE:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

.field public static final FLOAT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

.field public static final FLOAT_UNIT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

.field public static final GROUP:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

.field public static final INT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

.field public static final INT_UNIT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

.field private static final KNOWN_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/gbase/client/GoogleBaseAttributeType;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCATION:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

.field public static final NUMBER:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

.field public static final NUMBER_UNIT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

.field public static final REFERENCE:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

.field public static final SHIPPING:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

.field public static final TAX:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

.field public static final TEXT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

.field public static final URL:Lcom/google/api/gbase/client/GoogleBaseAttributeType;


# instance fields
.field private final name:Ljava/lang/String;

.field private final supertype:Lcom/google/api/gbase/client/GoogleBaseAttributeType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->KNOWN_TYPES:Ljava/util/Map;

    .line 42
    const-string/jumbo v0, "text"

    invoke-static {v0}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->createAndRegister(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->TEXT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .line 50
    const-string/jumbo v0, "number"

    invoke-static {v0}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->createAndRegister(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->NUMBER:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .line 54
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->NUMBER:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    const-string/jumbo v1, "int"

    invoke-static {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->createAndRegister(Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->INT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .line 58
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->NUMBER:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    const-string/jumbo v1, "float"

    invoke-static {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->createAndRegister(Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->FLOAT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .line 66
    const-string/jumbo v0, "numberUnit"

    invoke-static {v0}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->createAndRegister(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->NUMBER_UNIT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .line 70
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->NUMBER_UNIT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    const-string/jumbo v1, "intUnit"

    invoke-static {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->createAndRegister(Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->INT_UNIT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .line 74
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->NUMBER_UNIT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    const-string/jumbo v1, "floatUnit"

    invoke-static {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->createAndRegister(Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->FLOAT_UNIT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .line 88
    const-string/jumbo v0, "dateTimeRange"

    invoke-static {v0}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->createAndRegister(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->DATE_TIME_RANGE:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .line 92
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->DATE_TIME_RANGE:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    const-string/jumbo v1, "date"

    invoke-static {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->createAndRegister(Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->DATE:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .line 96
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->DATE:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    const-string/jumbo v1, "dateTime"

    invoke-static {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->createAndRegister(Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->DATE_TIME:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .line 100
    const-string/jumbo v0, "url"

    invoke-static {v0}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->createAndRegister(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->URL:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .line 104
    const-string/jumbo v0, "boolean"

    invoke-static {v0}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->createAndRegister(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->BOOLEAN:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .line 110
    const-string/jumbo v0, "group"

    invoke-static {v0}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->createAndRegister(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->GROUP:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .line 122
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->GROUP:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    const-string/jumbo v1, "shipping"

    invoke-static {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->createAndRegister(Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->SHIPPING:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .line 134
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->GROUP:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    const-string/jumbo v1, "tax"

    invoke-static {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->createAndRegister(Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->TAX:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .line 139
    const-string/jumbo v0, "location"

    invoke-static {v0}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->createAndRegister(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->LOCATION:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .line 145
    const-string/jumbo v0, "reference"

    invoke-static {v0}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->createAndRegister(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->REFERENCE:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    return-void
.end method

.method private constructor <init>(Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->supertype:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .line 190
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->name:Ljava/lang/String;

    .line 191
    return-void
.end method

.method private static createAndRegister(Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;
    .locals 3

    .prologue
    .line 175
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {v0, p0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;-><init>(Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    .line 176
    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->KNOWN_TYPES:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    return-object v0
.end method

.method private static createAndRegister(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->createAndRegister(Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 250
    if-nez p0, :cond_1

    move-object v0, v1

    .line 257
    :cond_0
    :goto_0
    return-object v0

    .line 253
    :cond_1
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->KNOWN_TYPES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .line 254
    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {v0, v1, p0}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;-><init>(Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 223
    if-ne p1, p0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    instance-of v2, p1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    if-nez v2, :cond_2

    move v0, v1

    .line 227
    goto :goto_0

    .line 229
    :cond_2
    check-cast p1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .line 230
    iget-object v2, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->name:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSupertype()Lcom/google/api/gbase/client/GoogleBaseAttributeType;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->supertype:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0xb

    return v0
.end method

.method public isSupertypeOf(Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Z
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    .line 272
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->getSupertype()Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    .line 273
    if-nez v0, :cond_1

    .line 274
    const/4 v0, 0x0

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->isSupertypeOf(Lcom/google/api/gbase/client/GoogleBaseAttributeType;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->name:Ljava/lang/String;

    return-object v0
.end method
