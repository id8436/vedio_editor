.class public Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;
.super Ljava/lang/Object;
.source "BehanceSDKUpdateProfileOptions.java"


# instance fields
.field private city:Ljava/lang/String;

.field private company:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private image:Ljava/io/File;

.field private lastName:Ljava/lang/String;

.field private occupation:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private website:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->company:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/io/File;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->image:Ljava/io/File;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getOccupation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->occupation:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->website:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->city:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->company:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->country:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->firstName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setImage(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->image:Ljava/io/File;

    .line 91
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->lastName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setOccupation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->occupation:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->state:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 55
    const-string/jumbo v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "www"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->website:Ljava/lang/String;

    .line 59
    return-void
.end method
