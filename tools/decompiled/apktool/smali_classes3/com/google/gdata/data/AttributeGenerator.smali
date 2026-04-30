.class public Lcom/google/gdata/data/AttributeGenerator;
.super Ljava/util/LinkedHashMap;
.source "AttributeGenerator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/AttributeGenerator;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/gdata/data/AttributeGenerator;->content:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 85
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    .line 86
    const-string/jumbo v0, "INF"

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p2, v0

    if-nez v0, :cond_1

    .line 88
    const-string/jumbo v0, "-INF"

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public put(Ljava/lang/String;F)V
    .locals 1

    .prologue
    .line 67
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 68
    const-string/jumbo v0, "INF"

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 70
    const-string/jumbo v0, "-INF"

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public put(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 43
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void

    .line 130
    :cond_0
    invoke-interface {p3, p2}, Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;->getAttributeValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 104
    if-nez p2, :cond_0

    .line 105
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :goto_0
    return-void

    .line 106
    :cond_0
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 107
    check-cast p2, Ljava/lang/Float;

    .line 108
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;F)V

    goto :goto_0

    .line 109
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 110
    check-cast p2, Ljava/lang/Double;

    .line 111
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;D)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 55
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/gdata/data/AttributeGenerator;->content:Ljava/lang/String;

    return-void
.end method
