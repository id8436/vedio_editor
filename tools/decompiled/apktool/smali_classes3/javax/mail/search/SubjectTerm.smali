.class public final Ljavax/mail/search/SubjectTerm;
.super Ljavax/mail/search/StringTerm;
.source "SubjectTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x67d3df04e1e99fb8L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 79
    instance-of v0, p1, Ljavax/mail/search/SubjectTerm;

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 64
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getSubject()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 69
    if-nez v1, :cond_0

    .line 72
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, v1}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    goto :goto_0
.end method
