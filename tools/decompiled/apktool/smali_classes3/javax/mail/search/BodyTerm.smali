.class public final Ljavax/mail/search/BodyTerm;
.super Ljavax/mail/search/StringTerm;
.source "BodyTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x43d8ba911c34ab19L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private matchPart(Ljavax/mail/Part;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 72
    :try_start_0
    const-string/jumbo v0, "text/*"

    invoke-interface {p1, v0}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-interface {p1}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    if-nez v0, :cond_0

    move v0, v1

    .line 96
    :goto_0
    return v0

    .line 84
    :cond_0
    invoke-super {p0, v0}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 85
    :cond_1
    const-string/jumbo v0, "multipart/*"

    invoke-interface {p1, v0}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    invoke-interface {p1}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Multipart;

    .line 87
    invoke-virtual {v0}, Ljavax/mail/Multipart;->getCount()I

    move-result v3

    move v2, v1

    .line 88
    :goto_1
    if-ge v2, v3, :cond_4

    .line 89
    invoke-virtual {v0, v2}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v4

    invoke-direct {p0, v4}, Ljavax/mail/search/BodyTerm;->matchPart(Ljavax/mail/Part;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    :cond_3
    const-string/jumbo v0, "message/rfc822"

    invoke-interface {p1, v0}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    invoke-interface {p1}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Part;

    invoke-direct {p0, v0}, Ljavax/mail/search/BodyTerm;->matchPart(Ljavax/mail/Part;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    :cond_4
    move v0, v1

    .line 96
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 103
    instance-of v0, p1, Ljavax/mail/search/BodyTerm;

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljavax/mail/search/BodyTerm;->matchPart(Ljavax/mail/Part;)Z

    move-result v0

    return v0
.end method
