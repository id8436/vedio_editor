.class public Lcom/google/gdata/data/analytics/AnalyticsLink;
.super Lcom/google/gdata/data/Link;
.source "AnalyticsLink.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "link"
    nsAlias = "atom"
    nsUri = "http://www.w3.org/2005/Atom"
.end annotation


# static fields
.field private static final TARGETKIND:Ljava/lang/String; = "gd:targetKind"

.field static final XML_NAME:Ljava/lang/String; = "link"


# instance fields
.field private targetKind:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/gdata/data/Link;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/AnalyticsLink;->targetKind:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/gdata/data/Link;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/AnalyticsLink;->targetKind:Ljava/lang/String;

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/AnalyticsLink;->setTargetKind(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/AnalyticsLink;->setImmutable(Z)V

    .line 77
    return-void
.end method

.method static synthetic access$002(Lcom/google/gdata/data/analytics/AnalyticsLink;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/gdata/data/analytics/AnalyticsLink;->targetKind:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 122
    const-class v0, Lcom/google/gdata/data/analytics/AnalyticsLink;

    invoke-static {v0}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 125
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 126
    return-object v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 137
    const-string/jumbo v0, "targetKind"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/AnalyticsLink;->targetKind:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 142
    if-ne p0, p1, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    .line 145
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/AnalyticsLink;->sameClassAs(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :cond_1
    check-cast p1, Lcom/google/gdata/data/analytics/AnalyticsLink;

    .line 149
    iget-object v0, p0, Lcom/google/gdata/data/analytics/AnalyticsLink;->targetKind:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/gdata/data/analytics/AnalyticsLink;->targetKind:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/data/analytics/AnalyticsLink;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/google/gdata/data/analytics/AnalyticsLink$AnalyticsLinkHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/analytics/AnalyticsLink$AnalyticsLinkHandler;-><init>(Lcom/google/gdata/data/analytics/AnalyticsLink;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getTargetKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/gdata/data/analytics/AnalyticsLink;->targetKind:Ljava/lang/String;

    return-object v0
.end method

.method public hasTargetKind()Z
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/AnalyticsLink;->getTargetKind()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/google/gdata/data/analytics/AnalyticsLink;->targetKind:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 156
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/gdata/data/analytics/AnalyticsLink;->targetKind:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    :cond_0
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2

    .prologue
    .line 131
    const-string/jumbo v0, "gd:targetKind"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/AnalyticsLink;->targetKind:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method public setTargetKind(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/AnalyticsLink;->throwExceptionIfImmutable()V

    .line 96
    iput-object p1, p0, Lcom/google/gdata/data/analytics/AnalyticsLink;->targetKind:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{AnalyticsLink targetKind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/AnalyticsLink;->targetKind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method
