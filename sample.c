int main(void){
	unsigned short *ptr;

	/* GBAモード設定初期化 */
	ptr = (unsigned short)0x04000000;	/* モード設定アドレス */
	*ptr = 0x0F03;		/* モード設定の初期化 */

	/* 描画 */
	ptr = (unsigned short)0x06000000;   /* VRAM先頭番地(0,0) */
    *ptr = 0x7FFF;      /* VRAM(0,0)に白点描画 */

    while(1);           /* プログラム停止 */

	return 0;
}

