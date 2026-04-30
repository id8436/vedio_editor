.class Lcom/google/gdata/util/common/base/CharMatcher$17;
.super Lcom/google/gdata/util/common/base/CharMatcher;
.source "CharMatcher.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/util/common/base/CharMatcher;

.field final synthetic val$original:Lcom/google/gdata/util/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/google/gdata/util/common/base/CharMatcher;Lcom/google/gdata/util/common/base/CharMatcher;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/google/gdata/util/common/base/CharMatcher$17;->this$0:Lcom/google/gdata/util/common/base/CharMatcher;

    iput-object p2, p0, Lcom/google/gdata/util/common/base/CharMatcher$17;->val$original:Lcom/google/gdata/util/common/base/CharMatcher;

    invoke-direct {p0}, Lcom/google/gdata/util/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 485
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/gdata/util/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .locals 2

    .prologue
    .line 497
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/google/gdata/util/common/base/CharMatcher$17;->val$original:Lcom/google/gdata/util/common/base/CharMatcher;

    invoke-virtual {v1, p1}, Lcom/google/gdata/util/common/base/CharMatcher;->countIn(Ljava/lang/CharSequence;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public matches(C)Z
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$17;->val$original:Lcom/google/gdata/util/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$17;->val$original:Lcom/google/gdata/util/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/common/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$17;->val$original:Lcom/google/gdata/util/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public negate()Lcom/google/gdata/util/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$17;->val$original:Lcom/google/gdata/util/common/base/CharMatcher;

    return-object v0
.end method
