.class public Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;
.super Lcom/adobe/premiereclip/prexport/fcpxml/Xmlable;
.source "Filter.java"


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mMediaType:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

.field private mName:Ljava/lang/String;

.field protected mParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/fcpxml/Xmlable;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mId:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mCategory:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mType:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mMediaType:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    .line 46
    return-void
.end method


# virtual methods
.method public getParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;

    .line 80
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public setParamValue(Ljava/lang/String;F)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;

    .line 58
    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->setValue(F)V

    .line 60
    :cond_0
    return-void
.end method

.method public setParamValue(Ljava/lang/String;FF)V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/filter/HorizVertFilterParameter;

    float-to-int v2, p2

    float-to-int v3, p3

    invoke-direct {v1, p1, p1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/HorizVertFilterParameter;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;

    invoke-virtual {v0, p2, p3}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->setValue(FF)V

    .line 90
    return-void
.end method

.method public setParamValue(Ljava/lang/String;FJ)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;

    .line 72
    invoke-virtual {v0, p2, p3, p4}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->setValue(FJ)V

    .line 74
    :cond_0
    return-void
.end method

.method public setParamValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;

    .line 51
    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->setValue(Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method public setParamValue(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;

    .line 65
    invoke-virtual {v0, p2, p3, p4}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->setValue(Ljava/lang/String;J)V

    .line 67
    :cond_0
    return-void
.end method

.method public toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 9

    .prologue
    .line 94
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v0, "filter"

    invoke-direct {v2, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 96
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v0, "effect"

    invoke-direct {v3, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "name"

    iget-object v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 98
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "effectid"

    iget-object v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mId:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 99
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mCategory:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "effectcategory"

    iget-object v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mCategory:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mType:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "effecttype"

    iget-object v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mType:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 107
    :cond_1
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "mediatype"

    sget-object v4, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->MediaTypeStrings:[Ljava/lang/String;

    iget-object v5, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mMediaType:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    invoke-virtual {v5}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->getNumVal()I

    move-result v5

    aget-object v4, v4, v5

    invoke-direct {v0, v1, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 108
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 111
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 112
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;

    .line 116
    new-instance v5, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v6, "parameter"

    invoke-direct {v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 117
    const-string/jumbo v6, "authoringApp"

    const-string/jumbo v7, "PremierePro"

    invoke-virtual {v5, v6, v7}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v6, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v7, "parameterid"

    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 119
    new-instance v6, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v7, "name"

    invoke-direct {v6, v7, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 120
    new-instance v6, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "value"

    invoke-direct {v6, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->getValueElements()Ljava/util/List;

    move-result-object v1

    .line 122
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    .line 124
    invoke-virtual {v6, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    goto :goto_1

    .line 128
    :cond_2
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->getMinValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 129
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v7, "valuemin"

    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->getMinValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 131
    :cond_3
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->getMaxValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 132
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v7, "valuemax"

    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->getMaxValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 134
    :cond_4
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 136
    :cond_5
    invoke-virtual {v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 138
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->getKeyframes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/KeyFrame;

    .line 139
    invoke-virtual {v0, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/KeyFrame;->toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    goto :goto_2

    .line 141
    :cond_6
    invoke-virtual {v3, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    goto/16 :goto_0

    .line 145
    :cond_7
    invoke-virtual {p1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 146
    return-void
.end method
