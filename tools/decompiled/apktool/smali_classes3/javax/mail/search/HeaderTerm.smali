.class public final Ljavax/mail/search/HeaderTerm;
.super Ljavax/mail/search/StringTerm;
.source "HeaderTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x73c690dfba9d2142L


# instance fields
.field protected headerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p2}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 95
    instance-of v1, p1, Ljavax/mail/search/HeaderTerm;

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    check-cast p1, Ljavax/mail/search/HeaderTerm;

    .line 99
    iget-object v1, p1, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    iget-object v2, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-super {p0}, Ljavax/mail/search/StringTerm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 77
    :try_start_0
    iget-object v0, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 82
    if-nez v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 85
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 86
    aget-object v3, v2, v0

    invoke-super {p0, v3}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    const/4 v1, 0x1

    goto :goto_0

    .line 85
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method
