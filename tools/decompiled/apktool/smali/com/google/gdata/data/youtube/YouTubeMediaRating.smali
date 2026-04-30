.class public Lcom/google/gdata/data/youtube/YouTubeMediaRating;
.super Lcom/google/gdata/data/media/mediarss/MediaRating;
.source "YouTubeMediaRating.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    isRepeatable = true
    localName = "rating"
    nsAlias = "media"
    nsUri = "http://search.yahoo.com/mrss/"
.end annotation


# static fields
.field private static final ALL_COUNTRIES:Ljava/lang/String; = "all"


# instance fields
.field private countries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countryState:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/MediaRating;-><init>()V

    .line 60
    sget-object v0, Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;->UNSET:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countryState:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countries:Ljava/util/Set;

    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;

    invoke-static {v0}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    return-object v0
.end method

.method private static join(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    const/4 v0, 0x1

    .line 172
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    if-eqz v1, :cond_0

    .line 174
    const/4 v1, 0x0

    .line 178
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 176
    :cond_0
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static split(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v1, " "

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 186
    if-nez v1, :cond_0

    .line 187
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    .line 189
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 190
    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 193
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clearCountry()V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;->UNSET:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countryState:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countries:Ljava/util/Set;

    .line 139
    return-void
.end method

.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/MediaRating;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 105
    const-string/jumbo v0, "country"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 106
    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->clearCountry()V

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string/jumbo v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->setAllCountries()V

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {v0}, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->split(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->setCountries(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getCountries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countries:Ljava/util/Set;

    return-object v0
.end method

.method public hasCountries()Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countryState:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    sget-object v1, Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;->COUNTRIES:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/MediaRating;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 80
    sget-object v0, Lcom/google/gdata/data/youtube/YouTubeMediaRating$1;->$SwitchMap$com$google$gdata$data$youtube$YouTubeMediaRating$CountryState:[I

    iget-object v1, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countryState:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    invoke-virtual {v1}, Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countryState:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :pswitch_0
    const-string/jumbo v0, "all"

    .line 96
    :goto_0
    if-eqz v0, :cond_0

    .line 97
    const-string/jumbo v1, "yt:country"

    invoke-virtual {p1, v1, v0}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    return-void

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countries:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->join(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :pswitch_2
    const/4 v0, 0x0

    .line 91
    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAllCountries()V
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;->ALL:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countryState:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countries:Ljava/util/Set;

    .line 131
    return-void
.end method

.method public setCountries(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->clearCountry()V

    .line 158
    :goto_0
    return-void

    .line 151
    :cond_1
    sget-object v0, Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;->COUNTRIES:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countryState:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    .line 152
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 153
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 156
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countries:Ljava/util/Set;

    goto :goto_0
.end method
