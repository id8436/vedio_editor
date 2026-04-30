.class public final Lcom/twitter/sdk/android/core/internal/ac;
.super Ljava/lang/Object;
.source "UserUtils.java"


# direct methods
.method public static a(Lcom/twitter/sdk/android/core/a/q;Lcom/twitter/sdk/android/core/internal/ae;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/twitter/sdk/android/core/a/q;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/twitter/sdk/android/core/a/q;->a:Ljava/lang/String;

    .line 50
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :cond_1
    sget-object v1, Lcom/twitter/sdk/android/core/internal/ad;->a:[I

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/ae;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 60
    :pswitch_0
    sget-object v1, Lcom/twitter/sdk/android/core/internal/ae;->a:Lcom/twitter/sdk/android/core/internal/ae;

    .line 61
    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/internal/ae;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/ae;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
