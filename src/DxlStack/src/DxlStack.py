from pypot.dynamixel import Dxl320IO
import rospy
from std_msgs.msg import String

stack = {}

rospy.init_node('DxlStack')
pub = rospy.Publisher('/robotState',String,queue_size=50)
rospy.Subscriber('/pose',String,concatStack,queue_size=50)

