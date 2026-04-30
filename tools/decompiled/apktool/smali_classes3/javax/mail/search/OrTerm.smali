.class public final Ljavax/mail/search/OrTerm;
.super Ljavax/mail/search/SearchTerm;
.source "OrTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x4aab7f3a24a275d8L


# instance fields
.field protected terms:[Ljavax/mail/search/SearchTerm;


# direct methods
.method public constructor <init>(Ljavax/mail/search/SearchTerm;Ljavax/mail/search/SearchTerm;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljavax/mail/search/SearchTerm;

    iput-object v0, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    .line 58
    iget-object v0, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 59
    iget-object v0, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 60
    return-void
.end method

.method public constructor <init>([Ljavax/mail/search/SearchTerm;)V
    .locals 3

    .prologue
    .line 67
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 68
    array-length v0, p1

    new-array v0, v0, [Ljavax/mail/search/SearchTerm;

    iput-object v0, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    .line 69
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 102
    instance-of v0, p1, Ljavax/mail/search/OrTerm;

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 104
    :cond_1
    check-cast p1, Ljavax/mail/search/OrTerm;

    .line 105
    iget-object v0, p1, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v0, v0

    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v2, v2

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 107
    :goto_1
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 108
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v2, v2, v0

    iget-object v3, p1, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getTerms()[Ljavax/mail/search/SearchTerm;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/search/SearchTerm;

    check-cast v0, [Ljavax/mail/search/SearchTerm;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 117
    move v1, v0

    .line 118
    :goto_0
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 119
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return v1
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 92
    move v0, v1

    :goto_0
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 93
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljavax/mail/search/SearchTerm;->match(Ljavax/mail/Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    const/4 v1, 0x1

    .line 95
    :cond_0
    return v1

    .line 92
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
