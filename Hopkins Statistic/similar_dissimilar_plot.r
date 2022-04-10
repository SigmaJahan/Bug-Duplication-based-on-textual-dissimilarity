bm25_eclipse_whole=c(10.10, 28.82, 34.37, 39.27, 40.95, 42.13, 45.19, 48.12, 50.15)
bm25_eclipse_sim=c(10.05, 27.78, 33.31, 39.28, 41.60, 43.18, 46.70, 49.71, 51.79)
bm25_eclipse_dissim=c(10.15, 29.84, 33.31, 39.25, 40.30, 41.11, 43.71, 46.56, 48.54)

bm25_firefox_whole=c(9.11, 19.96, 24.51, 29.22, 30.61, 31.86, 36.64, 39.56, 41.87)
bm25_firefox_sim=c(11.08, 23.19, 28.41, 33.00, 34.17, 35.24, 40.17, 42.94, 44.76)
bm25_firefox_dissim=c(6.76, 16.49, 20.03, 24.28, 26.00, 27.59, 31.26, 34.67, 37.46)

bm25_mobile_whole=c(14.32, 23.09, 26.31, 32.16, 34.21, 36.84, 42.98, 48.24, 50.58)
bm25_mobile_sim=c(18.12, 28.18, 32.21, 38.25, 40.93, 44.29, 52.34, 58.38, 60.40)
bm25_mobile_dissim=c(11.39, 19.17, 21.76, 27.46, 29.01, 31.08, 35.75, 40.41, 43.05)

par(mgp=c(2,0.7,0), mfrow=c(1,3), mar=c(4.1,4.1,3.1,2.1))

eclipse_all=c(bm25_eclipse_whole, bm25_eclipse_sim, bm25_eclipse_dissim)
firefox_all=c(bm25_firefox_whole, bm25_firefox_sim, bm25_firefox_dissim)
mobile_all=c(bm25_mobile_whole, bm25_mobile_sim, bm25_mobile_dissim)


plot(bm25_eclipse_whole, type="b", ylim = range(max(eclipse_all), min(eclipse_all)), lwd=1, 
     ylab="Recall-Rate@K", pch=19, xaxt="n", yaxt="n", xlab = "K")
lines(bm25_eclipse_sim, type = "b", pch=6, lwd=2)
lines(bm25_eclipse_dissim, type = "b", pch=8, lwd=2)
axis(1, at=c(1,2,3,4,5,6,7,8,9), labels=c("1","5","10","20","25","30","50","75","100"), cex.axis=1)
axis(2, at=x<-seq(0,100,by=10), labels=paste(x,"%",sep=""))



plot(bm25_firefox_whole, type="b", ylim = range(max(firefox_all), min(firefox_all)), lwd=1, 
     ylab="Recall-Rate@K", pch=19, xaxt="n", yaxt="n", xlab = "K")
lines(bm25_firefox_sim, type = "b", pch=6, lwd=2)
lines(bm25_firefox_dissim, type = "b", pch=8, lwd=2)
axis(1, at=c(1,2,3,4,5,6,7,8,9), labels=c("1","5","10","20","25","30","50","75","100"), cex.axis=1)
axis(2, at=x<-seq(0,100,by=10), labels=paste(x,"%",sep=""))


plot(bm25_mobile_whole, type="b", ylim = range(max(mobile_all), min(mobile_all)), lwd=1, 
     ylab="Recall-Rate@K", pch=19, xaxt="n", yaxt="n",  xlab = "K")
lines(bm25_mobile_sim, type = "b", pch=6, lwd=2)
lines(bm25_mobile_dissim, type = "b", pch=8, lwd=2)
axis(1, at=c(1,2,3,4,5,6,7,8,9), labels=c("1","5","10","20","25","30","50","75","100"), cex.axis=1)
axis(2, at=x<-seq(0,100,by=10), labels=paste(x,"%",sep=""))


#legend('center', ncol = 3, legend = c("All duplicates", "Textually similar duplicates",
#                                      "Textually dissimilar duplicates"), lwd=c(2,1,2), pch=c(19,6,8))

