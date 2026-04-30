.class public Lcom/twitter/sdk/android/tweetcomposer/ComposerView;
.super Landroid/widget/LinearLayout;
.source "ComposerView.java"


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/EditText;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/Button;

.field f:Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;

.field g:Landroid/view/View;

.field h:Landroid/graphics/drawable/ColorDrawable;

.field i:Landroid/widget/ImageView;

.field j:Lcom/twitter/sdk/android/tweetcomposer/e;

.field private k:Lcom/k/a/ak;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->a(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->a(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/k/a/ak;->a(Landroid/content/Context;)Lcom/k/a/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->k:Lcom/k/a/ak;

    .line 74
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetcomposer/q;->tw__composer_light_gray:I

    .line 75
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->h:Landroid/graphics/drawable/ColorDrawable;

    .line 76
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/s;->tw__composer_view:I

    invoke-static {p1, v0, p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/r;->tw__author_avatar:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->a:Landroid/widget/ImageView;

    .line 135
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/r;->tw__composer_close:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->b:Landroid/widget/ImageView;

    .line 136
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/r;->tw__edit_tweet:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->c:Landroid/widget/EditText;

    .line 137
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/r;->tw__char_count:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->d:Landroid/widget/TextView;

    .line 138
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/r;->tw__post_tweet:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->e:Landroid/widget/Button;

    .line 139
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/r;->tw__composer_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->f:Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;

    .line 140
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/r;->tw__composer_profile_divider:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->g:Landroid/view/View;

    .line 141
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/r;->tw__image_view:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->i:Landroid/widget/ImageView;

    .line 142
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    return-void
.end method

.method getTweetText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 82
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->a()V

    .line 84
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/j;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/j;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->e:Landroid/widget/Button;

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/k;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/k;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/l;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/l;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 106
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/m;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/m;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->f:Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/n;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/n;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;->setScrollViewListener(Lcom/twitter/sdk/android/tweetcomposer/internal/util/a;)V

    .line 131
    return-void
.end method

.method setCallbacks(Lcom/twitter/sdk/android/tweetcomposer/e;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->j:Lcom/twitter/sdk/android/tweetcomposer/e;

    .line 146
    return-void
.end method

.method setCharCount(I)V
    .locals 6

    .prologue
    .line 170
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->d:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method setCharCountTextStyle(I)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 175
    return-void
.end method

.method setImageView(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->k:Lcom/k/a/ak;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->k:Lcom/k/a/ak;

    invoke-virtual {v0, p1}, Lcom/k/a/ak;->a(Landroid/net/Uri;)Lcom/k/a/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/k/a/ba;->a(Landroid/widget/ImageView;)V

    .line 186
    :cond_0
    return-void
.end method

.method setProfilePhotoView(Lcom/twitter/sdk/android/core/a/q;)V
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/twitter/sdk/android/core/internal/ae;->e:Lcom/twitter/sdk/android/core/internal/ae;

    invoke-static {p1, v0}, Lcom/twitter/sdk/android/core/internal/ac;->a(Lcom/twitter/sdk/android/core/a/q;Lcom/twitter/sdk/android/core/internal/ae;)Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->k:Lcom/k/a/ak;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->k:Lcom/k/a/ak;

    invoke-virtual {v1, v0}, Lcom/k/a/ak;->a(Ljava/lang/String;)Lcom/k/a/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->h:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Lcom/k/a/ba;->a(Landroid/graphics/drawable/Drawable;)Lcom/k/a/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/k/a/ba;->a(Landroid/widget/ImageView;)V

    .line 159
    :cond_0
    return-void
.end method

.method setTweetText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method
