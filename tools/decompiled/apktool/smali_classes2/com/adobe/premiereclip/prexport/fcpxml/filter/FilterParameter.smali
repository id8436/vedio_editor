.class public Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;
.super Ljava/lang/Object;
.source "FilterParameter.java"


# instance fields
.field protected mId:Ljava/lang/String;

.field protected mKeyFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/filter/KeyFrame;",
            ">;"
        }
    .end annotation
.end field

.field protected mMaxValue:Ljava/lang/String;

.field protected mMinValue:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mValue:Ljava/lang/String;

.field protected mValueElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mName:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mId:Ljava/lang/String;

    .line 50
    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mValue:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mMinValue:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mMaxValue:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mValueElements:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mKeyFrames:Ljava/util/List;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mName:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mId:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mValue:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mMinValue:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mMaxValue:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mValueElements:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mKeyFrames:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyframes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/filter/KeyFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mKeyFrames:Ljava/util/List;

    return-object v0
.end method

.method public getMaxValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mMaxValue:Ljava/lang/String;

    return-object v0
.end method

.method public getMinValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mMinValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValueElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mValueElements:Ljava/util/List;

    return-object v0
.end method

.method public setValue(F)V
    .locals 1

    .prologue
    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mValue:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setValue(FF)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public setValue(FJ)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mKeyFrames:Ljava/util/List;

    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/filter/KeyFrame;

    invoke-direct {v1, p2, p3, p1}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/KeyFrame;-><init>(JF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mValue:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setValue(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;->mKeyFrames:Ljava/util/List;

    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/filter/KeyFrame;

    invoke-direct {v1, p2, p3, p1}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/KeyFrame;-><init>(JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method
