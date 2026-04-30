.class public Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;
.super Lcom/google/gdata/client/Query;
.source "AppsForYourDomainQuery.java"


# static fields
.field public static final RECIPIENT:Ljava/lang/String; = "recipient"

.field public static final START_EMAILLIST_NAME:Ljava/lang/String; = "startEmailListName"

.field public static final START_NICKNAME:Ljava/lang/String; = "startNickname"

.field public static final START_RECIPIENT:Ljava/lang/String; = "startRecipient"

.field public static final START_USERNAME:Ljava/lang/String; = "startUsername"

.field public static final USERNAME:Ljava/lang/String; = "username"


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->getCustomParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/Query$CustomParameter;

    invoke-virtual {v0}, Lcom/google/gdata/client/Query$CustomParameter;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string/jumbo v0, "recipient"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartEmailListName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string/jumbo v0, "startEmailListName"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string/jumbo v0, "startNickname"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string/jumbo v0, "startRecipient"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string/jumbo v0, "startUsername"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "username"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->getCustomParameters()Ljava/util/List;

    move-result-object v1

    .line 177
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->getCustomParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/Query$CustomParameter;

    .line 178
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_0
    if-eqz p2, :cond_1

    .line 183
    new-instance v0, Lcom/google/gdata/client/Query$CustomParameter;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/client/Query$CustomParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    return-void
.end method

.method public setRecipient(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    const-string/jumbo v0, "recipient"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public setStartEmailListName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 116
    const-string/jumbo v0, "startEmailListName"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public setStartNickname(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 136
    const-string/jumbo v0, "startNickname"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public setStartRecipient(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 156
    const-string/jumbo v0, "startRecipient"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public setStartUsername(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    const-string/jumbo v0, "startUsername"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "username"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainQuery;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method
