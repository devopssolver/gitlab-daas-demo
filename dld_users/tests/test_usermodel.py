import unittest

from django.contrib.auth.models import User


class MyTesting(unittest.TestCase):
    def setUp(self):
        self.u1 = User.objects.create(username='user1')

    def testUsernameSetPorperly(self):
        self.assertEqual(self.u1.username, 'user1')

    def tearDown(self):
        self.u1.delete()
