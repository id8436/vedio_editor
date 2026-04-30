.class public Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;
.super Lcom/behance/sdk/mobeta/android/dslv/ResourceDragSortCursorAdapter;
.source "SimpleDragSortCursorAdapter.java"


# instance fields
.field private mCursorToStringConverter:Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

.field protected mFrom:[I

.field mOriginalFrom:[Ljava/lang/String;

.field private mStringConversionColumn:I

.field protected mTo:[I

.field private mViewBinder:Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/behance/sdk/mobeta/android/dslv/ResourceDragSortCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    .line 94
    iput-object p5, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    .line 95
    iput-object p4, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 96
    invoke-direct {p0, p3, p4}, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 315
    if-eqz p1, :cond_2

    .line 317
    array-length v1, p2

    .line 318
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    array-length v0, v0

    if-eq v0, v1, :cond_1

    .line 319
    :cond_0
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    .line 321
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 322
    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    aget-object v3, p2, v0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    .line 327
    :cond_3
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v4, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mViewBinder:Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;

    .line 126
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    array-length v5, v0

    .line 127
    iget-object v6, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    .line 128
    iget-object v7, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    move v3, v2

    .line 130
    :goto_0
    if-ge v3, v5, :cond_4

    .line 131
    aget v0, v7, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_1

    .line 134
    if-eqz v4, :cond_5

    .line 135
    aget v1, v6, v3

    invoke-interface {v4, v0, p3, v1}, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v1

    .line 138
    :goto_1
    if-nez v1, :cond_1

    .line 139
    aget v1, v6, v3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    if-nez v1, :cond_0

    .line 141
    const-string/jumbo v1, ""

    .line 144
    :cond_0
    instance-of v8, v0, Landroid/widget/TextView;

    if-eqz v8, :cond_2

    .line 145
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 130
    :cond_1
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 146
    :cond_2
    instance-of v8, v0, Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    .line 147
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2

    .line 149
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is not a  view that can be bounds by this SimpleCursorAdapter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_4
    return-void

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 350
    iput-object p2, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 351
    iput-object p3, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    .line 355
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 356
    invoke-super {p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/ResourceDragSortCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 357
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    invoke-interface {v0, p1}, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    .line 300
    :cond_0
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 301
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 304
    :cond_1
    invoke-super {p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/ResourceDragSortCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getCursorToStringConverter()Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    return-object v0
.end method

.method public getStringConversionColumn()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    return v0
.end method

.method public getViewBinder()Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mViewBinder:Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;

    return-object v0
.end method

.method public setCursorToStringConverter(Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    .line 283
    return-void
.end method

.method public setStringConversionColumn(I)V
    .locals 0

    .prologue
    .line 250
    iput p1, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    .line 251
    return-void
.end method

.method public setViewBinder(Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mViewBinder:Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;

    .line 180
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 199
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 217
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/mobeta/android/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 335
    invoke-super {p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/ResourceDragSortCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
