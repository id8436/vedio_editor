.class public Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;
.super Ljava/lang/Object;
.source "FeaturedVideo.java"


# instance fields
.field private author:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private playlist:Ljava/lang/String;

.field private postDate:Ljava/util/Date;

.field private status:Ljava/lang/String;

.field private thumbPath:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->uuid:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->title:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->author:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->thumbPath:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->playlist:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "OK"

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->status:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->uuid:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->title:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->author:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->description:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->thumbPath:Ljava/lang/String;

    .line 54
    iput-object p7, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->playlist:Ljava/lang/String;

    .line 55
    iput-object p8, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->status:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->postDate:Ljava/util/Date;

    .line 58
    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 62
    invoke-virtual {v0, p4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->postDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getPostDateString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    const-string/jumbo v0, "MM/dd/yy hh:mm a"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getPostDateString(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostDateString(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->postDate:Ljava/util/Date;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 102
    :goto_0
    return-object v0

    .line 100
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 102
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->postDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    const-string/jumbo v0, ""

    .line 92
    const-string/jumbo v0, "http://premiereclip.adobe.com/videos/"

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->thumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->playlist:Ljava/lang/String;

    return-object v0
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->status:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 114
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 116
    :try_start_0
    const-string/jumbo v1, "ccv_id"

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string/jumbo v1, "author"

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->author:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string/jumbo v1, "description"

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string/jumbo v1, "post_date"

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    const-string/jumbo v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->getPostDateString(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string/jumbo v1, "hls_playlist"

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->playlist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string/jumbo v1, "status"

    iget-object v2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideo;->status:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v1

    goto :goto_0
.end method
