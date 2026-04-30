.class public final Ljavax/mail/search/MessageNumberTerm;
.super Ljavax/mail/search/IntegerComparisonTerm;
.source "MessageNumberTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x4aa8453089517f44L


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Ljavax/mail/search/IntegerComparisonTerm;-><init>(II)V

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 73
    instance-of v0, p1, Ljavax/mail/search/MessageNumberTerm;

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/search/IntegerComparisonTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 1

    .prologue
    .line 61
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getMessageNumber()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 66
    invoke-super {p0, v0}, Ljavax/mail/search/IntegerComparisonTerm;->match(I)Z

    move-result v0

    :goto_0
    return v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const/4 v0, 0x0

    goto :goto_0
.end method
