.class public Lcom/adobe/premiereclip/prexport/fcpxml/filter/SpeedFilter;
.super Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;
.source "SpeedFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 28
    const-string/jumbo v1, "Time Remap"

    const-string/jumbo v2, "timeremap"

    const-string/jumbo v3, "motion"

    const-string/jumbo v4, "motion"

    sget-object v5, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->video:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;)V

    .line 30
    iget-object v6, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->mParameters:Ljava/util/HashMap;

    const-string/jumbo v7, "speed"

    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;

    const-string/jumbo v1, "speed"

    const-string/jumbo v2, "speed"

    const/high16 v3, 0x42c80000    # 100.0f

    const-string/jumbo v4, "-10000"

    const-string/jumbo v5, "10000"

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;-><init>(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method


# virtual methods
.method public toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 8

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 38
    const-string/jumbo v0, "filter"

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->getChild(Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    move-result-object v0

    .line 39
    const-string/jumbo v1, "effect"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->getChild(Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    move-result-object v0

    .line 40
    const-string/jumbo v1, "parameter"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->getChild(Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    move-result-object v1

    .line 42
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "parameter"

    invoke-direct {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 43
    const-string/jumbo v3, "authoringApp"

    const-string/jumbo v4, "PremierePro"

    invoke-virtual {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "parameterid"

    const-string/jumbo v5, "reverse"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 45
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "name"

    const-string/jumbo v5, "reverse"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 46
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "value"

    const-string/jumbo v5, "FALSE"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 47
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 49
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "parameter"

    invoke-direct {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v3, "authoringApp"

    const-string/jumbo v4, "PremierePro"

    invoke-virtual {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "parameterid"

    const-string/jumbo v5, "frameblending"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 52
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "name"

    const-string/jumbo v5, "frameblending"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 53
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "value"

    const-string/jumbo v5, "FALSE"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 54
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 56
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "parameter"

    invoke-direct {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v2, "authoringApp"

    const-string/jumbo v3, "PremierePro"

    invoke-virtual {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "parameterid"

    const-string/jumbo v4, "variablespeed"

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 59
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "name"

    const-string/jumbo v4, "variablespeed"

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 60
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "valuemin"

    const-string/jumbo v4, "0"

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 61
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "valuemax"

    const-string/jumbo v4, "1"

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 62
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "value"

    const-string/jumbo v4, "0"

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 63
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 65
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "parameter"

    invoke-direct {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v2, "authoringApp"

    const-string/jumbo v3, "PremierePro"

    invoke-virtual {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "parameterid"

    const-string/jumbo v4, "mappedduration"

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 68
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "name"

    const-string/jumbo v4, "mappedduration"

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 69
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "value"

    invoke-direct {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 70
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "timecode"

    invoke-direct {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v4, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "rate"

    invoke-direct {v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v5, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v6, "timebase"

    const-string/jumbo v7, "0"

    invoke-direct {v5, v6, v7}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 73
    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 74
    new-instance v4, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "string"

    const-string/jumbo v6, "0"

    invoke-direct {v4, v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 75
    new-instance v4, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "frame"

    const-string/jumbo v6, "0"

    invoke-direct {v4, v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 76
    new-instance v4, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "displayformat"

    const-string/jumbo v6, "NDF"

    invoke-direct {v4, v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 77
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 78
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 80
    return-void
.end method
